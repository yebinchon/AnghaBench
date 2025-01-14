
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef size_t uint_t ;
typedef int n2 ;
typedef int n1 ;
typedef int dtrace_hdl_t ;
struct TYPE_20__ {int dx_id; } ;
typedef TYPE_3__ dt_xlator_t ;
struct TYPE_18__ {int dtvd_name; } ;
struct TYPE_21__ {TYPE_1__ pv_desc; } ;
typedef TYPE_4__ dt_provider_t ;
struct TYPE_22__ {scalar_t__ pr_nargs; scalar_t__ pr_xargs; size_t pr_xargc; size_t* pr_mapping; TYPE_6__** pr_nargv; TYPE_6__** pr_xargv; } ;
typedef TYPE_5__ dt_probe_t ;
struct TYPE_23__ {TYPE_2__* dn_ident; } ;
typedef TYPE_6__ dt_node_t ;
struct TYPE_24__ {int pcb_jmpbuf; int * pcb_hdl; } ;
struct TYPE_19__ {int di_name; TYPE_5__* di_data; } ;


 int DT_TYPE_NAMELEN ;
 int DT_XLATE_FUZZY ;
 int D_PROV_PRXLATOR ;
 int EDT_NOMEM ;
 int dnerror (TYPE_6__*,int ,char*,int ,int ,size_t,int ,int ) ;
 scalar_t__ dt_node_is_argcompat (TYPE_6__*,TYPE_6__*) ;
 int dt_node_type_name (TYPE_6__*,char*,int) ;
 scalar_t__ dt_provider_xref (int *,TYPE_4__*,int ) ;
 TYPE_3__* dt_xlator_lookup (int *,TYPE_6__*,TYPE_6__*,int ) ;
 int longjmp (int ,int ) ;
 TYPE_7__* yypcb ;

__attribute__((used)) static void
dt_cook_probe(dt_node_t *dnp, dt_provider_t *pvp)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dt_probe_t *prp = dnp->dn_ident->di_data;

 dt_xlator_t *dxp;
 uint_t i;

 char n1[DT_TYPE_NAMELEN];
 char n2[DT_TYPE_NAMELEN];

 if (prp->pr_nargs == prp->pr_xargs)
  return;

 for (i = 0; i < prp->pr_xargc; i++) {
  dt_node_t *xnp = prp->pr_xargv[i];
  dt_node_t *nnp = prp->pr_nargv[prp->pr_mapping[i]];

  if ((dxp = dt_xlator_lookup(dtp,
      nnp, xnp, DT_XLATE_FUZZY)) != ((void*)0)) {
   if (dt_provider_xref(dtp, pvp, dxp->dx_id) != 0)
    longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
   continue;
  }

  if (dt_node_is_argcompat(nnp, xnp))
   continue;

  dnerror(dnp, D_PROV_PRXLATOR, "translator for %s:%s output "
      "argument #%u from %s to %s is not defined\n",
      pvp->pv_desc.dtvd_name, dnp->dn_ident->di_name, i + 1,
      dt_node_type_name(nnp, n1, sizeof (n1)),
      dt_node_type_name(xnp, n2, sizeof (n2)));
 }
}
