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

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ PHI_NODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  SSA_OP_ALL_VIRTUALS ; 
 scalar_t__ SWITCH_EXPR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10 (tree stmt)
{
  if (FUNC5 (stmt) == PHI_NODE
      && FUNC9 (FUNC3 (stmt))
      && (FUNC2 (FUNC7 (FUNC3 (stmt)))
	  || FUNC4 (FUNC7 (FUNC3 (stmt)))))
    return true;
  else if (FUNC5 (stmt) == MODIFY_EXPR)
    {
      tree lhs = FUNC6 (stmt, 0);
      tree rhs = FUNC6 (stmt, 1);

      /* In general, assignments with virtual operands are not useful
	 for deriving ranges, with the obvious exception of calls to
	 builtin functions.  */
      if (FUNC5 (lhs) == SSA_NAME
	  && (FUNC2 (FUNC7 (lhs))
	      || FUNC4 (FUNC7 (lhs)))
	  && ((FUNC5 (rhs) == CALL_EXPR
	       && FUNC5 (FUNC6 (rhs, 0)) == ADDR_EXPR
	       && FUNC1 (FUNC6 (FUNC6 (rhs, 0), 0))
	       && FUNC0 (FUNC6 (FUNC6 (rhs, 0), 0)))
	      || FUNC8 (stmt, SSA_OP_ALL_VIRTUALS)))
	return true;
    }
  else if (FUNC5 (stmt) == COND_EXPR || FUNC5 (stmt) == SWITCH_EXPR)
    return true;

  return false;
}