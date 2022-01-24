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
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ OFFSET_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

tree
FUNC6 (tree function)
{
  tree type = FUNC2 (function);

  /* We have to do these by hand to avoid real pointer to member
     functions.  */
  if (FUNC0 (type) == METHOD_TYPE)
    {
      if (FUNC0 (function) == OFFSET_REF)
	{
	  tree object = FUNC3 (FUNC1 (function, 0));
	  return FUNC5 (&object,
						   FUNC1 (function, 1));
	}
      function = FUNC3 (function);
    }
  else
    function = FUNC4 (function);

  return function;
}