
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPOUND_EXPR ;
 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 int build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int fold_ignored_result (int ) ;
 int non_lvalue (int ) ;

tree
omit_one_operand (tree type, tree result, tree omitted)
{
  tree t = fold_convert (type, result);

  if (TREE_SIDE_EFFECTS (omitted))
    return build2 (COMPOUND_EXPR, type, fold_ignored_result (omitted), t);

  return non_lvalue (t);
}
