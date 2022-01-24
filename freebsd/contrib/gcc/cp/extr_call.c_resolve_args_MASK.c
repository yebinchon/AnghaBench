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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC7 (tree args)
{
  tree t;
  for (t = args; t; t = FUNC0 (t))
    {
      tree arg = FUNC2 (t);

      if (FUNC5 (arg))
	return error_mark_node;
      else if (FUNC3 (FUNC1 (arg)))
	{
	  FUNC4 ("invalid use of void expression");
	  return error_mark_node;
	}
      else if (FUNC6 (arg))
	return error_mark_node;
    }
  return args;
}