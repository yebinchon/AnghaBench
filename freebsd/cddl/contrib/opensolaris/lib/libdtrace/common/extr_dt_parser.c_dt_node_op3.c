
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dn_kind; scalar_t__ dn_value; struct TYPE_7__* dn_right; struct TYPE_7__* dn_left; struct TYPE_7__* dn_expr; int dn_op; } ;
typedef TYPE_1__ dt_node_t ;


 scalar_t__ DT_NODE_INT ;
 int DT_NODE_OP3 ;
 int DT_TOK_QUESTION ;
 TYPE_1__* dt_node_alloc (int ) ;

dt_node_t *
dt_node_op3(dt_node_t *expr, dt_node_t *lp, dt_node_t *rp)
{
 dt_node_t *dnp;

 if (expr->dn_kind == DT_NODE_INT)
  return (expr->dn_value != 0 ? lp : rp);

 dnp = dt_node_alloc(DT_NODE_OP3);
 dnp->dn_op = DT_TOK_QUESTION;
 dnp->dn_expr = expr;
 dnp->dn_left = lp;
 dnp->dn_right = rp;

 return (dnp);
}
