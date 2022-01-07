
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ARRAY_TYPE ;
 int MULT_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int array_type_nelts_top (int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int sizetype ;

tree
array_type_nelts_total (tree type)
{
  tree sz = array_type_nelts_top (type);
  type = TREE_TYPE (type);
  while (TREE_CODE (type) == ARRAY_TYPE)
    {
      tree n = array_type_nelts_top (type);
      sz = fold_build2 (MULT_EXPR, sizetype, sz, n);
      type = TREE_TYPE (type);
    }
  return sz;
}
