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
typedef  int /*<<< orphan*/ * tree ;
typedef  int TREE_SIDE_EFFECTS ;

/* Variables and functions */
 scalar_t__ BIND_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ cur_stmt_list ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  void_type_node ; 

tree
FUNC8 (tree stmt, bool do_scope)
{
  tree block = NULL;

  if (do_scope)
    {
      if (FUNC4 ())
	FUNC5 ();
      block = FUNC6 ();
    }

  stmt = FUNC7 (stmt);
  stmt = FUNC3 (block, stmt);

  /* If this compound statement is nested immediately inside a statement
     expression, then force a BIND_EXPR to be created.  Otherwise we'll
     do the wrong thing for ({ { 1; } }) or ({ 1; { } }).  In particular,
     STATEMENT_LISTs merge, and thus we can lose track of what statement
     was really last.  */
  if (cur_stmt_list
      && FUNC0 (cur_stmt_list)
      && FUNC1 (stmt) != BIND_EXPR)
    {
      stmt = FUNC2 (BIND_EXPR, void_type_node, NULL, stmt, NULL);
      TREE_SIDE_EFFECTS (stmt) = 1;
    }

  return stmt;
}