
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int reshape_iter ;


 scalar_t__ ARRAY_TYPE ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_DOMAIN (int ) ;
 int array_type_nelts (int ) ;
 int gcc_assert (int) ;
 int reshape_init_array_1 (int ,int ,int *) ;

__attribute__((used)) static tree
reshape_init_array (tree type, reshape_iter *d)
{
  tree max_index = NULL_TREE;

  gcc_assert (TREE_CODE (type) == ARRAY_TYPE);

  if (TYPE_DOMAIN (type))
    max_index = array_type_nelts (type);

  return reshape_init_array_1 (TREE_TYPE (type), max_index, d);
}
