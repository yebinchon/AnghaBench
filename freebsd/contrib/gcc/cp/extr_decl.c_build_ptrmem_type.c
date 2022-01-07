
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ METHOD_TYPE ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 int build_method_type_directly (int ,int ,int ) ;
 int build_offset_type (int ,int ) ;
 int build_pointer_type (int ) ;
 int build_ptrmemfunc_type (int ) ;
 int cp_build_qualified_type (int ,int ) ;
 int cp_type_quals (int ) ;
 int gcc_assert (int) ;

tree
build_ptrmem_type (tree class_type, tree member_type)
{
  if (TREE_CODE (member_type) == METHOD_TYPE)
    {
      tree arg_types;

      arg_types = TYPE_ARG_TYPES (member_type);
      class_type = (cp_build_qualified_type
      (class_type,
       cp_type_quals (TREE_TYPE (TREE_VALUE (arg_types)))));
      member_type
 = build_method_type_directly (class_type,
          TREE_TYPE (member_type),
          TREE_CHAIN (arg_types));
      return build_ptrmemfunc_type (build_pointer_type (member_type));
    }
  else
    {
      gcc_assert (TREE_CODE (member_type) != FUNCTION_TYPE);
      return build_offset_type (class_type, member_type);
    }
}
