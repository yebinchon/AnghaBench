
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int dummy; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int COND_EXPR ;
 scalar_t__ NULL_TREE ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TRUTH_AND_EXPR ;
 int TRUTH_OR_EXPR ;
 int boolean_type_node ;
 scalar_t__ fold_build2 (int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build3 (int,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ instantiate_parameters (struct loop*,scalar_t__) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;

__attribute__((used)) static tree
simplify_using_outer_evolutions (struct loop *loop, tree expr)
{
  enum tree_code code = TREE_CODE (expr);
  bool changed;
  tree e, e0, e1, e2;

  if (is_gimple_min_invariant (expr))
    return expr;

  if (code == TRUTH_OR_EXPR
      || code == TRUTH_AND_EXPR
      || code == COND_EXPR)
    {
      changed = 0;

      e0 = simplify_using_outer_evolutions (loop, TREE_OPERAND (expr, 0));
      if (TREE_OPERAND (expr, 0) != e0)
 changed = 1;

      e1 = simplify_using_outer_evolutions (loop, TREE_OPERAND (expr, 1));
      if (TREE_OPERAND (expr, 1) != e1)
 changed = 1;

      if (code == COND_EXPR)
 {
   e2 = simplify_using_outer_evolutions (loop, TREE_OPERAND (expr, 2));
   if (TREE_OPERAND (expr, 2) != e2)
     changed = 1;
 }
      else
 e2 = NULL_TREE;

      if (changed)
 {
   if (code == COND_EXPR)
     expr = fold_build3 (code, boolean_type_node, e0, e1, e2);
   else
     expr = fold_build2 (code, boolean_type_node, e0, e1);
 }

      return expr;
    }

  e = instantiate_parameters (loop, expr);
  if (is_gimple_min_invariant (e))
    return e;

  return expr;
}
