
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int append_to_statement_list (int ,int *) ;
 int build1 (int ,int ,int ) ;
 int build_function_call_expr (int ,int ) ;
 int build_int_cst (int ,int) ;
 int build_pointer_type (int ) ;
 int convert (int ,int ) ;
 int enqueued_call_stmt_chain ;
 int mf_register_fndecl ;
 int ptr_type_node ;
 int size_type_node ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static void
mudflap_register_call (tree obj, tree object_size, tree varname)
{
  tree arg, args, call_stmt;

  args = tree_cons (NULL_TREE, varname, NULL_TREE);

  arg = build_int_cst (NULL_TREE, 4);
  args = tree_cons (NULL_TREE, arg, args);

  arg = convert (size_type_node, object_size);
  args = tree_cons (NULL_TREE, arg, args);

  arg = build1 (ADDR_EXPR, build_pointer_type (TREE_TYPE (obj)), obj);
  arg = convert (ptr_type_node, arg);
  args = tree_cons (NULL_TREE, arg, args);

  call_stmt = build_function_call_expr (mf_register_fndecl, args);

  append_to_statement_list (call_stmt, &enqueued_call_stmt_chain);
}
