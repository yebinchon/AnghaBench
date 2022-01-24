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
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
#define  POLYNOMIAL_CHREC 128 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

tree 
FUNC7 (tree chrec, 
					 unsigned loop_num)
{
  if (FUNC4 (chrec))
    return chrec;
  
  switch (FUNC3 (chrec))
    {
    case POLYNOMIAL_CHREC:
      if (FUNC2 (chrec) == loop_num)
	return FUNC5 
	  (loop_num, 
	   FUNC7 (FUNC0 (chrec), 
						    loop_num), 
	   FUNC1 (chrec));
      
      else if (FUNC2 (chrec) < loop_num)
	/* There is no evolution in this loop.  */
	return FUNC6 (chrec);
      
      else
	return FUNC7 (FUNC0 (chrec), 
							loop_num);
      
    default:
      return chrec;
    }
}