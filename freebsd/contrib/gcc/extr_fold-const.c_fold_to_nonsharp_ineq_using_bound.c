
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int GE_EXPR ;
 scalar_t__ GT_EXPR ;
 int INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ LT_EXPR ;
 int MINUS_EXPR ;
 scalar_t__ NULL_TREE ;
 int POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int integer_onep (scalar_t__) ;

__attribute__((used)) static tree
fold_to_nonsharp_ineq_using_bound (tree ineq, tree bound)
{
  tree a, typea, type = TREE_TYPE (ineq), a1, diff, y;

  if (TREE_CODE (bound) == LT_EXPR)
    a = TREE_OPERAND (bound, 0);
  else if (TREE_CODE (bound) == GT_EXPR)
    a = TREE_OPERAND (bound, 1);
  else
    return NULL_TREE;

  typea = TREE_TYPE (a);
  if (!INTEGRAL_TYPE_P (typea)
      && !POINTER_TYPE_P (typea))
    return NULL_TREE;

  if (TREE_CODE (ineq) == LT_EXPR)
    {
      a1 = TREE_OPERAND (ineq, 1);
      y = TREE_OPERAND (ineq, 0);
    }
  else if (TREE_CODE (ineq) == GT_EXPR)
    {
      a1 = TREE_OPERAND (ineq, 0);
      y = TREE_OPERAND (ineq, 1);
    }
  else
    return NULL_TREE;

  if (TREE_TYPE (a1) != typea)
    return NULL_TREE;

  diff = fold_build2 (MINUS_EXPR, typea, a1, a);
  if (!integer_onep (diff))
    return NULL_TREE;

  return fold_build2 (GE_EXPR, type, a, y);
}
