#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TRY_FINALLY_EXPR ; 
 int /*<<< orphan*/  TSI_SAME_STMT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  mf_register_fndecl ; 
 int /*<<< orphan*/  mf_unregister_fndecl ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  size_type_node ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  void_type_node ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC24 (tree decl, tree *stmt_list)
{
  tree finally_stmts = NULL_TREE;
  tree_stmt_iterator initially_stmts = FUNC22 (*stmt_list);

  while (decl != NULL_TREE)
    {
      if (FUNC15 (decl) 
          /* Not already processed.  */
          && ! FUNC17 (decl)
          /* Automatic variable.  */
          && ! FUNC0 (decl)
          && ! FUNC4 (decl))
        {
          tree size = NULL_TREE, variable_name;
          tree unregister_fncall, unregister_fncall_params;
          tree register_fncall, register_fncall_params;

	  size = FUNC13 (size_type_node, FUNC6 (FUNC5 (decl)));

          /* (& VARIABLE, sizeof (VARIABLE), __MF_TYPE_STACK) */
          unregister_fncall_params =
            FUNC19 (NULL_TREE,
                       FUNC13 (ptr_type_node,
                                FUNC16 (FUNC8 (ADDR_EXPR,
                                                 FUNC12 (FUNC5 (decl)),
                                                 decl))),
                       FUNC19 (NULL_TREE, 
                                  size,
                                  FUNC19 (NULL_TREE,
					     /* __MF_TYPE_STACK */
                                             FUNC11 (NULL_TREE, 3),
                                             NULL_TREE)));
          /* __mf_unregister (...) */
          unregister_fncall = FUNC10 (mf_unregister_fndecl,
                                                        unregister_fncall_params);

          /* (& VARIABLE, sizeof (VARIABLE), __MF_TYPE_STACK, "name") */
          variable_name = FUNC18 (decl);
          register_fncall_params =
            FUNC19 (NULL_TREE,
                   FUNC13 (ptr_type_node,
                            FUNC16 (FUNC8 (ADDR_EXPR,
                                             FUNC12 (FUNC5 (decl)),
                                             decl))),
                       FUNC19 (NULL_TREE,
                                  size,
                                  FUNC19 (NULL_TREE,
					     /* __MF_TYPE_STACK */
                                             FUNC11 (NULL_TREE, 3),
                                             FUNC19 (NULL_TREE,
                                                        variable_name,
                                                        NULL_TREE))));

          /* __mf_register (...) */
          register_fncall = FUNC10 (mf_register_fndecl,
                                                      register_fncall_params);

          /* Accumulate the two calls.  */
          /* ??? Set EXPR_LOCATION.  */
          FUNC14 (&register_fncall);
          FUNC14 (&unregister_fncall);

          /* Add the __mf_register call at the current appending point.  */
          if (FUNC20 (initially_stmts))
	    FUNC23 (0, "mudflap cannot track %qs in stub function",
		     FUNC2 (FUNC1 (decl)));
	  else
	    {
	      FUNC21 (&initially_stmts, register_fncall, TSI_SAME_STMT);

	      /* Accumulate the FINALLY piece.  */
	      FUNC7 (unregister_fncall, &finally_stmts);
	    }
          FUNC16 (decl);
        }

      decl = FUNC3 (decl);
    }

  /* Actually, (initially_stmts!=NULL) <=> (finally_stmts!=NULL) */
  if (finally_stmts != NULL_TREE)
    {
      tree t = FUNC9 (TRY_FINALLY_EXPR, void_type_node,
                       *stmt_list, finally_stmts);
      *stmt_list = NULL;
      FUNC7 (t, stmt_list);
    }
}