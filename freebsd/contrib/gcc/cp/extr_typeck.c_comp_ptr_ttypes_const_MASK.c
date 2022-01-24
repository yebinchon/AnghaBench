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
 scalar_t__ OFFSET_TYPE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC5 (tree to, tree from)
{
  for (; ; to = FUNC1 (to), from = FUNC1 (from))
    {
      if (FUNC0 (to) != FUNC0 (from))
	return false;

      if (FUNC0 (from) == OFFSET_TYPE
	  && FUNC4 (FUNC2 (from),
			  FUNC2 (to)))
	  continue;

      if (FUNC0 (to) != POINTER_TYPE)
	return FUNC3 (to, from);
    }
}