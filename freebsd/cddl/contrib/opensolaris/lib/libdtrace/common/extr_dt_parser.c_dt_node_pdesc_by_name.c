
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_5__ {char* dn_spec; int * dn_desc; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_6__ {int pcb_sargv; int pcb_sargc; int pcb_pspec; int pcb_jmpbuf; int * pcb_hdl; } ;


 int DT_NODE_PDESC ;
 int D_PDESC_INVAL ;
 int EDT_NOMEM ;
 TYPE_1__* dt_node_alloc (int ) ;
 int dtrace_errmsg (int *,int ) ;
 int dtrace_errno (int *) ;
 scalar_t__ dtrace_xstr2desc (int *,int ,char*,int ,int ,int *) ;
 int free (char*) ;
 int longjmp (int ,int ) ;
 int * malloc (int) ;
 int xyerror (int ,char*,char*,int ) ;
 TYPE_2__* yypcb ;

dt_node_t *
dt_node_pdesc_by_name(char *spec)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dt_node_t *dnp;

 if (spec == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 dnp = dt_node_alloc(DT_NODE_PDESC);
 dnp->dn_spec = spec;
 dnp->dn_desc = malloc(sizeof (dtrace_probedesc_t));

 if (dnp->dn_desc == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 if (dtrace_xstr2desc(dtp, yypcb->pcb_pspec, dnp->dn_spec,
     yypcb->pcb_sargc, yypcb->pcb_sargv, dnp->dn_desc) != 0) {
  xyerror(D_PDESC_INVAL, "invalid probe description \"%s\": %s\n",
      dnp->dn_spec, dtrace_errmsg(dtp, dtrace_errno(dtp)));
 }

 free(dnp->dn_spec);
 dnp->dn_spec = ((void*)0);

 return (dnp);
}
