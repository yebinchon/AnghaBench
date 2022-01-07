
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
typedef int u_longlong_t ;
typedef int dtrace_probedesc_t ;
typedef int dtrace_id_t ;
typedef int dtrace_hdl_t ;
struct TYPE_5__ {int * dn_desc; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_6__ {size_t pcb_pspec; int pcb_jmpbuf; int * pcb_hdl; } ;


 size_t DTRACE_PROBESPEC_NAME ;
 int DT_NODE_PDESC ;
 int D_PDESC_INVAL ;
 int EDT_NOMEM ;
 scalar_t__ UINT_MAX ;
 TYPE_1__* dt_node_alloc (int ) ;
 char const* const dtrace_errmsg (int *,int ) ;
 int dtrace_errno (int *) ;
 scalar_t__ dtrace_id2desc (int *,int ,int *) ;
 int longjmp (int ,int ) ;
 int * malloc (int) ;
 int xyerror (int ,char*,int ,...) ;
 TYPE_2__* yypcb ;

dt_node_t *
dt_node_pdesc_by_id(uintmax_t id)
{
 static const char *const names[] = {
  "providers", "modules", "functions"
 };

 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dt_node_t *dnp = dt_node_alloc(DT_NODE_PDESC);

 if ((dnp->dn_desc = malloc(sizeof (dtrace_probedesc_t))) == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 if (id > UINT_MAX) {
  xyerror(D_PDESC_INVAL, "identifier %llu exceeds maximum "
      "probe id\n", (u_longlong_t)id);
 }

 if (yypcb->pcb_pspec != DTRACE_PROBESPEC_NAME) {
  xyerror(D_PDESC_INVAL, "probe identifier %llu not permitted "
      "when specifying %s\n", (u_longlong_t)id,
      names[yypcb->pcb_pspec]);
 }

 if (dtrace_id2desc(dtp, (dtrace_id_t)id, dnp->dn_desc) != 0) {
  xyerror(D_PDESC_INVAL, "invalid probe identifier %llu: %s\n",
      (u_longlong_t)id, dtrace_errmsg(dtp, dtrace_errno(dtp)));
 }

 return (dnp);
}
