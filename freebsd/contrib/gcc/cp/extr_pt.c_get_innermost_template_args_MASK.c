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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

tree
FUNC5 (tree args, int n)
{
  tree new_args;
  int extra_levels;
  int i;

  FUNC3 (n >= 0);

  /* If N is 1, just return the innermost set of template arguments.  */
  if (n == 1)
    return FUNC2 (args, FUNC1 (args));

  /* If we're not removing anything, just return the arguments we were
     given.  */
  extra_levels = FUNC1 (args) - n;
  FUNC3 (extra_levels >= 0);
  if (extra_levels == 0)
    return args;

  /* Make a new set of arguments, not containing the outer arguments.  */
  new_args = FUNC4 (n);
  for (i = 1; i <= n; ++i)
    FUNC0 (new_args, i,
			 FUNC2 (args, i + extra_levels));

  return new_args;
}