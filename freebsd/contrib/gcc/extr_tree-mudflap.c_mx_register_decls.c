
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef scalar_t__ tree ;


 int ADDR_EXPR ;
 int DECL_EXTERNAL (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 int IDENTIFIER_POINTER (int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_STATIC (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TRY_FINALLY_EXPR ;
 int TSI_SAME_STMT ;
 int TYPE_SIZE_UNIT (int ) ;
 int append_to_statement_list (scalar_t__,scalar_t__*) ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_function_call_expr (int ,scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int) ;
 int build_pointer_type (int ) ;
 scalar_t__ convert (int ,int ) ;
 int gimplify_stmt (scalar_t__*) ;
 scalar_t__ mf_decl_eligible_p (scalar_t__) ;
 int mf_mark (scalar_t__) ;
 int mf_marked_p (scalar_t__) ;
 int mf_register_fndecl ;
 int mf_unregister_fndecl ;
 scalar_t__ mf_varname_tree (scalar_t__) ;
 int ptr_type_node ;
 int size_type_node ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ tsi_end_p (int ) ;
 int tsi_link_before (int *,scalar_t__,int ) ;
 int tsi_start (scalar_t__) ;
 int void_type_node ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static void
mx_register_decls (tree decl, tree *stmt_list)
{
  tree finally_stmts = NULL_TREE;
  tree_stmt_iterator initially_stmts = tsi_start (*stmt_list);

  while (decl != NULL_TREE)
    {
      if (mf_decl_eligible_p (decl)

          && ! mf_marked_p (decl)

          && ! DECL_EXTERNAL (decl)
          && ! TREE_STATIC (decl))
        {
          tree size = NULL_TREE, variable_name;
          tree unregister_fncall, unregister_fncall_params;
          tree register_fncall, register_fncall_params;

   size = convert (size_type_node, TYPE_SIZE_UNIT (TREE_TYPE (decl)));


          unregister_fncall_params =
            tree_cons (NULL_TREE,
                       convert (ptr_type_node,
                                mf_mark (build1 (ADDR_EXPR,
                                                 build_pointer_type (TREE_TYPE (decl)),
                                                 decl))),
                       tree_cons (NULL_TREE,
                                  size,
                                  tree_cons (NULL_TREE,

                                             build_int_cst (NULL_TREE, 3),
                                             NULL_TREE)));

          unregister_fncall = build_function_call_expr (mf_unregister_fndecl,
                                                        unregister_fncall_params);


          variable_name = mf_varname_tree (decl);
          register_fncall_params =
            tree_cons (NULL_TREE,
                   convert (ptr_type_node,
                            mf_mark (build1 (ADDR_EXPR,
                                             build_pointer_type (TREE_TYPE (decl)),
                                             decl))),
                       tree_cons (NULL_TREE,
                                  size,
                                  tree_cons (NULL_TREE,

                                             build_int_cst (NULL_TREE, 3),
                                             tree_cons (NULL_TREE,
                                                        variable_name,
                                                        NULL_TREE))));


          register_fncall = build_function_call_expr (mf_register_fndecl,
                                                      register_fncall_params);



          gimplify_stmt (&register_fncall);
          gimplify_stmt (&unregister_fncall);


          if (tsi_end_p (initially_stmts))
     warning (0, "mudflap cannot track %qs in stub function",
       IDENTIFIER_POINTER (DECL_NAME (decl)));
   else
     {
       tsi_link_before (&initially_stmts, register_fncall, TSI_SAME_STMT);


       append_to_statement_list (unregister_fncall, &finally_stmts);
     }
          mf_mark (decl);
        }

      decl = TREE_CHAIN (decl);
    }


  if (finally_stmts != NULL_TREE)
    {
      tree t = build2 (TRY_FINALLY_EXPR, void_type_node,
                       *stmt_list, finally_stmts);
      *stmt_list = ((void*)0);
      append_to_statement_list (t, stmt_list);
    }
}
