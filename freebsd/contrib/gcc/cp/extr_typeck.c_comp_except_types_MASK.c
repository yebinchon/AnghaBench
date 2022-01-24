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
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (tree a, tree b, bool exact)
{
  if (FUNC4 (a, b))
    return true;
  else if (!exact)
    {
      if (FUNC3 (a) || FUNC3 (b))
	return false;

      if (FUNC1 (a) == POINTER_TYPE
	  && FUNC1 (b) == POINTER_TYPE)
	{
	  a = FUNC2 (a);
	  b = FUNC2 (b);
	  if (FUNC3 (a) || FUNC3 (b))
	    return false;
	}

      if (FUNC1 (a) != RECORD_TYPE
	  || FUNC1 (b) != RECORD_TYPE)
	return false;

      if (FUNC0 (a, b))
	return true;
    }
  return false;
}