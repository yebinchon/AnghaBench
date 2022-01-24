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
 int COMPARE_BASE ; 
 int COMPARE_DERIVED ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ INTEGER_TYPE ; 
 scalar_t__ OFFSET_TYPE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VECTOR_TYPE ; 
 scalar_t__ VOID_TYPE ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC7 (tree to, tree from)
{
  for (; ; to = FUNC1 (to), from = FUNC1 (from))
    {
      /* Any target type is similar enough to void.  */
      if (FUNC0 (to) == VOID_TYPE
	  || FUNC0 (from) == VOID_TYPE)
	return 1;

      if (FUNC0 (to) != FUNC0 (from))
	return 0;

      if (FUNC0 (from) == OFFSET_TYPE
	  && FUNC5 (FUNC3 (to),
			FUNC3 (from),
			COMPARE_BASE | COMPARE_DERIVED))
	continue;

      if (FUNC0 (to) == VECTOR_TYPE
	  && FUNC6 (to, from, false))
	return 1;

      if (FUNC0 (to) == INTEGER_TYPE
	  && FUNC4 (to) == FUNC4 (from))
	return 1;

      if (FUNC0 (to) == FUNCTION_TYPE)
	return 1;

      if (FUNC0 (to) != POINTER_TYPE)
	return FUNC5
	  (FUNC2 (to), FUNC2 (from),
	   COMPARE_BASE | COMPARE_DERIVED);
    }
}