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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  POLYNOMIAL_CHREC 128 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

tree 
FUNC8 (tree chrec, 
				 tree init_cond)
{
  if (FUNC4 (chrec))
    return chrec;

  FUNC7 (FUNC6 (chrec) == FUNC6 (init_cond));

  switch (FUNC3 (chrec))
    {
    case POLYNOMIAL_CHREC:
      return FUNC5 
	(FUNC2 (chrec),
	 FUNC8 (FUNC0 (chrec), init_cond),
	 FUNC1 (chrec));
      
    default:
      return init_cond;
    }
}