
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int GE_EXPR ;
 int TREE_TYPE (int ) ;
 int boolean_type_node ;
 int build_int_cst (int ,int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int nonzero_p (int ) ;
 scalar_t__ tree_expr_nonnegative_p (int ) ;
 int tree_simplify_using_condition_1 (int ,int ) ;

__attribute__((used)) static bool
implies_nonnegative_p (tree cond, tree val)
{
  tree type = TREE_TYPE (val);
  tree compare;

  if (tree_expr_nonnegative_p (val))
    return 1;

  if (nonzero_p (cond))
    return 0;

  compare = fold_build2 (GE_EXPR,
    boolean_type_node, val, build_int_cst (type, 0));
  compare = tree_simplify_using_condition_1 (cond, compare);

  return nonzero_p (compare);
}
