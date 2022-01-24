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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline tree
FUNC6 (tree val)
{
  if (!FUNC4 (val))
    return val;

  if (FUNC5 (val, FUNC1 (FUNC0 (val)), 0))
    return FUNC1 (FUNC0 (val));
  else
    {
#ifdef ENABLE_CHECKING
      gcc_assert (operand_equal_p (val, TYPE_MIN_VALUE (TREE_TYPE (val)), 0));
#endif
      return FUNC2 (FUNC0 (val));
    }
}