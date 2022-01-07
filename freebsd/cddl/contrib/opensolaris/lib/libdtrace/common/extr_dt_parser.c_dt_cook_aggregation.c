
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint_t ;
typedef int dtrace_hdl_t ;
struct TYPE_9__ {TYPE_6__* dn_ident; int dn_aggtup; int * dn_aggfun; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_11__ {int di_attr; } ;
struct TYPE_10__ {int * pcb_hdl; } ;


 int B_FALSE ;
 int DT_DYN_CTFP (int *) ;
 int DT_DYN_TYPE (int *) ;
 int DT_IDFLG_REF ;
 int dt_ident_cook (TYPE_1__*,TYPE_6__*,int *) ;
 int dt_node_attr_assign (TYPE_1__*,int ) ;
 int * dt_node_cook (int *,int ) ;
 int dt_node_type_assign (TYPE_1__*,int ,int ,int ) ;
 TYPE_2__* yypcb ;

__attribute__((used)) static dt_node_t *
dt_cook_aggregation(dt_node_t *dnp, uint_t idflags)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;

 if (dnp->dn_aggfun != ((void*)0)) {
  dnp->dn_aggfun = dt_node_cook(dnp->dn_aggfun, DT_IDFLG_REF);
  dt_node_attr_assign(dnp, dt_ident_cook(dnp,
      dnp->dn_ident, &dnp->dn_aggtup));
 } else {
  dt_node_type_assign(dnp, DT_DYN_CTFP(dtp), DT_DYN_TYPE(dtp),
      B_FALSE);
  dt_node_attr_assign(dnp, dnp->dn_ident->di_attr);
 }

 return (dnp);
}
