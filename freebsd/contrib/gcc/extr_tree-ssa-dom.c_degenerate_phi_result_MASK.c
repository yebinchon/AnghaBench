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
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC4 (tree phi)
{
  tree lhs = FUNC2 (phi);
  tree val = NULL;
  int i;

  /* Ignoring arguments which are the same as LHS, if all the remaining
     arguments are the same, then the PHI is a degenerate and has the
     value of that common argument.  */
  for (i = 0; i < FUNC1 (phi); i++)
    {
      tree arg = FUNC0 (phi, i);

      if (arg == lhs)
	continue;
      else if (!val)
	val = arg;
      else if (!FUNC3 (arg, val, 0))
	break;
    }
  return (i == FUNC1 (phi) ? val : NULL);
}