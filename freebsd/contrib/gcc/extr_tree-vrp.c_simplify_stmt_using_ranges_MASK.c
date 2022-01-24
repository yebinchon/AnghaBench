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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int ABS_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ COND_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int TRUNC_DIV_EXPR ; 
 int TRUNC_MOD_EXPR ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC10 (tree stmt)
{
  if (FUNC3 (stmt) == MODIFY_EXPR)
    {
      tree rhs = FUNC4 (stmt, 1);
      enum tree_code rhs_code = FUNC3 (rhs);

      /* Transform TRUNC_DIV_EXPR and TRUNC_MOD_EXPR into RSHIFT_EXPR
	 and BIT_AND_EXPR respectively if the first operand is greater
	 than zero and the second operand is an exact power of two.  */
      if ((rhs_code == TRUNC_DIV_EXPR || rhs_code == TRUNC_MOD_EXPR)
	  && FUNC2 (FUNC5 (FUNC4 (rhs, 0)))
	  && FUNC6 (FUNC4 (rhs, 1)))
	FUNC9 (stmt, rhs, rhs_code);

      /* Transform ABS (X) into X or -X as appropriate.  */
      if (rhs_code == ABS_EXPR
	  && FUNC3 (FUNC4 (rhs, 0)) == SSA_NAME
	  && FUNC2 (FUNC5 (FUNC4 (rhs, 0))))
	FUNC7 (stmt, rhs);
    }
  else if (FUNC3 (stmt) == COND_EXPR
	   && FUNC0 (FUNC1 (stmt)))
    {
      FUNC8 (stmt);
    }
}