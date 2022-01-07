
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int dummy; } ;
typedef TYPE_1__* edge ;
struct TYPE_4__ {scalar_t__ src; int flags; } ;


 scalar_t__ COND_EXPR ;
 int COND_EXPR_COND (scalar_t__) ;
 int EDGE_TRUE_VALUE ;
 scalar_t__ ENTRY_BLOCK_PTR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ boolean_false_node ;
 scalar_t__ boolean_true_node ;
 scalar_t__ last_stmt (scalar_t__) ;
 TYPE_1__* loop_preheader_edge (struct loop*) ;
 scalar_t__ operand_equal_p (int ,scalar_t__,int ) ;
 TYPE_1__* single_pred_edge (scalar_t__) ;
 int single_pred_p (scalar_t__) ;

__attribute__((used)) static tree
simplify_using_entry_checks (struct loop *loop, tree cond)
{
  edge e = loop_preheader_edge (loop);
  tree stmt;

  while (1)
    {
      stmt = last_stmt (e->src);
      if (stmt
   && TREE_CODE (stmt) == COND_EXPR
   && operand_equal_p (COND_EXPR_COND (stmt), cond, 0))
 return (e->flags & EDGE_TRUE_VALUE
  ? boolean_true_node
  : boolean_false_node);

      if (!single_pred_p (e->src))
 return cond;

      e = single_pred_edge (e->src);
      if (e->src == ENTRY_BLOCK_PTR)
 return cond;
    }
}
