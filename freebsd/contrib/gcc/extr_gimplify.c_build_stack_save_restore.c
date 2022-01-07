
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_STACK_RESTORE ;
 size_t BUILT_IN_STACK_SAVE ;
 int MODIFY_EXPR ;
 int NULL_TREE ;
 int build2 (int ,int ,int ,int ) ;
 int build_function_call_expr (int ,int ) ;
 int create_tmp_var (int ,char*) ;
 int * implicit_built_in_decls ;
 int ptr_type_node ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static void
build_stack_save_restore (tree *save, tree *restore)
{
  tree save_call, tmp_var;

  save_call =
      build_function_call_expr (implicit_built_in_decls[BUILT_IN_STACK_SAVE],
    NULL_TREE);
  tmp_var = create_tmp_var (ptr_type_node, "saved_stack");

  *save = build2 (MODIFY_EXPR, ptr_type_node, tmp_var, save_call);
  *restore =
    build_function_call_expr (implicit_built_in_decls[BUILT_IN_STACK_RESTORE],
         tree_cons (NULL_TREE, tmp_var, NULL_TREE));
}
