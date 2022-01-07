
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TREE_OPERAND (scalar_t__,int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ fold_indirect_ref_1 (int ,int ) ;

tree
fold_indirect_ref (tree t)
{
  tree sub = fold_indirect_ref_1 (TREE_TYPE (t), TREE_OPERAND (t, 0));

  if (sub)
    return sub;
  else
    return t;
}
