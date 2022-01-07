
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int INDIRECT_REF ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_indirect_ref_1 (scalar_t__,scalar_t__) ;

tree
build_fold_indirect_ref (tree t)
{
  tree type = TREE_TYPE (TREE_TYPE (t));
  tree sub = fold_indirect_ref_1 (type, t);

  if (sub)
    return sub;
  else
    return build1 (INDIRECT_REF, type, t);
}
