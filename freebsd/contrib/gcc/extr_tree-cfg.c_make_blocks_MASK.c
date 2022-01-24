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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_BLOCK_PTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int found_computed_goto ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (tree stmt_list)
{
  tree_stmt_iterator i = FUNC8 (stmt_list);
  tree stmt = NULL;
  bool start_new_block = true;
  bool first_stmt_of_list = true;
  basic_block bb = ENTRY_BLOCK_PTR;

  while (!FUNC5 (i))
    {
      tree prev_stmt;

      prev_stmt = stmt;
      stmt = FUNC9 (i);

      /* If the statement starts a new basic block or if we have determined
	 in a previous pass that we need to create a new block for STMT, do
	 so now.  */
      if (start_new_block || FUNC4 (stmt, prev_stmt))
	{
	  if (!first_stmt_of_list)
	    stmt_list = FUNC7 (&i);
	  bb = FUNC1 (stmt_list, NULL, bb);
	  start_new_block = false;
	}

      /* Now add STMT to BB and create the subgraphs for special statement
	 codes.  */
      FUNC2 (stmt, bb);

      if (FUNC0 (stmt))
	found_computed_goto = true;

      /* If STMT is a basic block terminator, set START_NEW_BLOCK for the
	 next iteration.  */
      if (FUNC3 (stmt))
	start_new_block = true;

      FUNC6 (&i);
      first_stmt_of_list = false;
    }
}