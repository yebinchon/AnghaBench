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
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 scalar_t__ GOTO_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ LABEL_EXPR ; 
 scalar_t__ SWITCH_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6 (basic_block bb)
{
  block_stmt_iterator bsi;

  /* Advance to the first executable statement.  */
  bsi = FUNC4 (bb);
  while (!FUNC2 (bsi)
          && (FUNC1 (FUNC5 (bsi)) == LABEL_EXPR
              || FUNC0 (FUNC5 (bsi))))
    FUNC3 (&bsi);

  /* Check if this is an empty block.  */
  if (FUNC2 (bsi))
    return true;

  /* Test that we've reached the terminating control statement.  */
  return FUNC5 (bsi)
	 && (FUNC1 (FUNC5 (bsi)) == COND_EXPR
	     || FUNC1 (FUNC5 (bsi)) == GOTO_EXPR
	     || FUNC1 (FUNC5 (bsi)) == SWITCH_EXPR);
}