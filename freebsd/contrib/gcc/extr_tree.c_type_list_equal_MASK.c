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
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 

int
FUNC5 (tree l1, tree l2)
{
  tree t1, t2;

  for (t1 = l1, t2 = l2; t1 && t2; t1 = FUNC0 (t1), t2 = FUNC0 (t2))
    if (FUNC3 (t1) != FUNC3 (t2)
	|| (FUNC1 (t1) != FUNC1 (t2)
	    && ! (1 == FUNC4 (FUNC1 (t1), FUNC1 (t2))
		  && (FUNC2 (FUNC1 (t1))
		      == FUNC2 (FUNC1 (t2))))))
      return 0;

  return t1 == t2;
}