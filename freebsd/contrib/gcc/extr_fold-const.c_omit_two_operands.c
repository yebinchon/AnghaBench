
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 int build2 (scalar_t__,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int non_lvalue (int ) ;

tree
omit_two_operands (tree type, tree result, tree omitted1, tree omitted2)
{
  tree t = fold_convert (type, result);

  if (TREE_SIDE_EFFECTS (omitted2))
    t = build2 (COMPOUND_EXPR, type, omitted2, t);
  if (TREE_SIDE_EFFECTS (omitted1))
    t = build2 (COMPOUND_EXPR, type, omitted1, t);

  return TREE_CODE (t) != COMPOUND_EXPR ? non_lvalue (t) : t;
}
