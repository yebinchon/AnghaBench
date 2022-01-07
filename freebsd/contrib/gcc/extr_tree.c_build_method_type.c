
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 int build_method_type_directly (int ,int ,int ) ;
 int gcc_assert (int) ;

tree
build_method_type (tree basetype, tree type)
{
  gcc_assert (TREE_CODE (type) == FUNCTION_TYPE);

  return build_method_type_directly (basetype,
         TREE_TYPE (type),
         TYPE_ARG_TYPES (type));
}
