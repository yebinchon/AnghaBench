
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dn_kind; struct TYPE_7__* dn_expr; TYPE_1__* dn_ident; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_6__ {scalar_t__ di_kind; } ;


 scalar_t__ DT_IDENT_ACTFUNC ;
 scalar_t__ DT_NODE_AGG ;
 int DT_NODE_DEXPR ;
 int DT_NODE_DFUNC ;
 scalar_t__ DT_NODE_FUNC ;
 TYPE_2__* dt_node_alloc (int ) ;

dt_node_t *
dt_node_statement(dt_node_t *expr)
{
 dt_node_t *dnp;

 if (expr->dn_kind == DT_NODE_AGG)
  return (expr);

 if (expr->dn_kind == DT_NODE_FUNC &&
     expr->dn_ident->di_kind == DT_IDENT_ACTFUNC)
  dnp = dt_node_alloc(DT_NODE_DFUNC);
 else
  dnp = dt_node_alloc(DT_NODE_DEXPR);

 dnp->dn_expr = expr;
 return (dnp);
}
