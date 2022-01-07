
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {scalar_t__ header; } ;
typedef TYPE_1__* edge ;
typedef scalar_t__ basic_block ;
struct TYPE_3__ {int flags; int src; } ;


 int CDI_DOMINATORS ;
 scalar_t__ COND_EXPR_COND (int ) ;
 int EDGE_FALSE_VALUE ;
 int EDGE_TRUE_VALUE ;
 scalar_t__ ENTRY_BLOCK_PTR ;
 scalar_t__ INTEGER_CST ;
 int MAX_DOMINATORS_TO_WALK ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TRUTH_AND_EXPR ;
 int boolean_type_node ;
 scalar_t__ fold_build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ get_immediate_dominator (int ,scalar_t__) ;
 scalar_t__ invert_truthvalue (scalar_t__) ;
 int last_stmt (int ) ;
 TYPE_1__* single_pred_edge (scalar_t__) ;
 int single_pred_p (scalar_t__) ;
 scalar_t__ tree_simplify_using_condition (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
simplify_using_initial_conditions (struct loop *loop, tree expr,
       tree *conds_used)
{
  edge e;
  basic_block bb;
  tree exp, cond;
  int cnt = 0;

  if (TREE_CODE (expr) == INTEGER_CST)
    return expr;




  for (bb = loop->header;
       bb != ENTRY_BLOCK_PTR && cnt < MAX_DOMINATORS_TO_WALK;
       bb = get_immediate_dominator (CDI_DOMINATORS, bb))
    {
      if (!single_pred_p (bb))
 continue;
      e = single_pred_edge (bb);

      if (!(e->flags & (EDGE_TRUE_VALUE | EDGE_FALSE_VALUE)))
 continue;

      cond = COND_EXPR_COND (last_stmt (e->src));
      if (e->flags & EDGE_FALSE_VALUE)
 cond = invert_truthvalue (cond);
      exp = tree_simplify_using_condition (cond, expr);

      if (exp != expr)
 *conds_used = fold_build2 (TRUTH_AND_EXPR,
       boolean_type_node,
       *conds_used,
       cond);

      expr = exp;
      ++cnt;
    }

  return expr;
}
