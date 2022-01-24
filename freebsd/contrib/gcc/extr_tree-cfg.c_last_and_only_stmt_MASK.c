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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ LABEL_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

tree
FUNC5 (basic_block bb)
{
  block_stmt_iterator i = FUNC2 (bb);
  tree last, prev;

  if (FUNC1 (i))
    return NULL_TREE;

  last = FUNC4 (i);
  FUNC3 (&i);
  if (FUNC1 (i))
    return last;

  /* Empty statements should no longer appear in the instruction stream.
     Everything that might have appeared before should be deleted by
     remove_useless_stmts, and the optimizers should just bsi_remove
     instead of smashing with build_empty_stmt.

     Thus the only thing that should appear here in a block containing
     one executable statement is a label.  */
  prev = FUNC4 (i);
  if (FUNC0 (prev) == LABEL_EXPR)
    return last;
  else
    return NULL_TREE;
}