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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  POLYNOMIAL_CHREC 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (tree chrec, 
			       tree cst, 
			       bool *res)
{
  switch (FUNC2 (chrec))
    {
    case POLYNOMIAL_CHREC:
      if (FUNC3 (FUNC1 (chrec)))
	{
	  if (FUNC4 (FUNC1 (chrec), cst))
	    /* Keep RES to true, and iterate on other dimensions.  */
	    return FUNC5 (FUNC0 (chrec), cst, res);
	  
	  *res = false;
	  return true;
	}
      else
	/* When the step is a parameter the result is undetermined.  */
	return false;

    default:
      /* On the initial condition, return true.  */
      return true;
    }
}