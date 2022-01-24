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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 

bool
FUNC5 (tree current, tree scope)
{
  tree seen = NULL_TREE;
  tree todo = NULL_TREE;
  tree t;
  while (1)
    {
      if (scope == current)
	return true;
      seen = FUNC4 (scope, NULL_TREE, seen);
      for (t = FUNC0 (scope); t; t = FUNC1 (t))
	if (!FUNC3 (FUNC2 (t), seen))
	  todo = FUNC4 (FUNC2 (t), NULL_TREE, todo);
      if (todo)
	{
	  scope = FUNC2 (todo);
	  todo = FUNC1 (todo);
	}
      else
	return false;
    }
}