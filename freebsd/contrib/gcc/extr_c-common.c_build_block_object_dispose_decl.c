
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ TREE_NOTHROW ;


 int NOT_BUILT_IN ;
 int NULL_TREE ;
 scalar_t__ block_object_dispose_func_decl ;
 scalar_t__ build_function_type (int ,int ) ;
 scalar_t__ builtin_function (char*,scalar_t__,int ,int ,int ,int ) ;
 int get_identifier (char*) ;
 int integer_type_node ;
 scalar_t__ lookup_name (int ) ;
 int ptr_type_node ;
 int tree_cons (int ,int ,int ) ;
 int void_list_node ;
 int void_type_node ;

__attribute__((used)) static tree
build_block_object_dispose_decl (void)
{
  tree func_type;
  if (block_object_dispose_func_decl)
    return block_object_dispose_func_decl;
  block_object_dispose_func_decl = lookup_name (get_identifier ("_Block_object_dispose"));
  if (block_object_dispose_func_decl)
    return block_object_dispose_func_decl;
  func_type =
      build_function_type (void_type_node,
       tree_cons (NULL_TREE, ptr_type_node,
           tree_cons (NULL_TREE, integer_type_node, void_list_node)));

  block_object_dispose_func_decl = builtin_function ("_Block_object_dispose", func_type,
            0, NOT_BUILT_IN, 0, NULL_TREE);
  TREE_NOTHROW (block_object_dispose_func_decl) = 0;
  return block_object_dispose_func_decl;
}
