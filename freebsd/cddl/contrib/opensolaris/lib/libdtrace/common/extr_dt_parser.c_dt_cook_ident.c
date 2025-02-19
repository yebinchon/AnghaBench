
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_9__ {int dt_globals; int dt_aggs; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_10__ {scalar_t__ dn_op; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_11__ {TYPE_1__* pcb_hdl; } ;


 int B_FALSE ;
 int DT_IDENT_AGG ;
 int DT_IDENT_SCALAR ;
 scalar_t__ DT_TOK_AGG ;
 TYPE_2__* dt_node_cook (TYPE_2__*,int ) ;
 int dt_xcook_ident (TYPE_2__*,int ,int ,int ) ;
 TYPE_3__* yypcb ;

__attribute__((used)) static dt_node_t *
dt_cook_ident(dt_node_t *dnp, uint_t idflags)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;

 if (dnp->dn_op == DT_TOK_AGG)
  dt_xcook_ident(dnp, dtp->dt_aggs, DT_IDENT_AGG, B_FALSE);
 else
  dt_xcook_ident(dnp, dtp->dt_globals, DT_IDENT_SCALAR, B_FALSE);

 return (dt_node_cook(dnp, idflags));
}
