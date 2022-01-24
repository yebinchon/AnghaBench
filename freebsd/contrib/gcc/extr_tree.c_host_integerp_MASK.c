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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6 (tree t, int pos)
{
  return (FUNC0 (t) == INTEGER_CST
	  && ((FUNC1 (t) == 0
	       && (HOST_WIDE_INT) FUNC2 (t) >= 0)
	      || (! pos && FUNC1 (t) == -1
		  && (HOST_WIDE_INT) FUNC2 (t) < 0
		  && (!FUNC5 (FUNC3 (t))
		      || FUNC4 (FUNC3 (t))))
	      || (pos && FUNC1 (t) == 0)));
}