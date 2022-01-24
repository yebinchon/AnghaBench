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
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

tree 
FUNC10 (unsigned loop_num,
			 tree chrec, 
			 tree new_evol)
{
  FUNC9 (FUNC8 (chrec) == FUNC8 (new_evol));

  if (FUNC3 (chrec) == POLYNOMIAL_CHREC
      && FUNC2 (chrec) > loop_num)
    {
      tree left = FUNC10 (loop_num, FUNC0 (chrec),
					   new_evol);
      tree right = FUNC10 (loop_num, FUNC1 (chrec),
					    new_evol);
      return FUNC5 (POLYNOMIAL_CHREC, FUNC4 (left),
		     FUNC6 (NULL_TREE, FUNC2 (chrec)),
		     left, right);
    }

  while (FUNC3 (chrec) == POLYNOMIAL_CHREC
	 && FUNC2 (chrec) == loop_num)
    chrec = FUNC0 (chrec);
  
  return FUNC7 (loop_num, chrec, new_evol);
}