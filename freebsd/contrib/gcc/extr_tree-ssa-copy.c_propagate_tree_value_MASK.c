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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (tree *op_p, tree val)
{
#if defined ENABLE_CHECKING
  gcc_assert (!(TREE_CODE (val) == SSA_NAME
		&& TREE_CODE (*op_p) == SSA_NAME
		&& !may_propagate_copy (*op_p, val)));
#endif

  if (FUNC1 (val) == SSA_NAME)
    {
      if (FUNC1 (*op_p) == SSA_NAME && FUNC0 (FUNC2 (*op_p)))
	FUNC5 (*op_p, val);
      *op_p = val;
    }
  else
    *op_p = FUNC6 (val);
}