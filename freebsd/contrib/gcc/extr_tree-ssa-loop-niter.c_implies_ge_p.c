
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int GE_EXPR ;
 int boolean_type_node ;
 int fold_build2 (int ,int ,int ,int ) ;
 int nonzero_p (int ) ;
 int tree_simplify_using_condition_1 (int ,int ) ;

__attribute__((used)) static bool
implies_ge_p (tree cond, tree a, tree b)
{
  tree compare = fold_build2 (GE_EXPR, boolean_type_node, a, b);

  if (nonzero_p (compare))
    return 1;

  if (nonzero_p (cond))
    return 0;

  compare = tree_simplify_using_condition_1 (cond, compare);

  return nonzero_p (compare);
}
