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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__* reg_renumber ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8 (rtx x)
{
  if (FUNC3 (x))
    {
      if (FUNC2 (x) >= FIRST_PSEUDO_REGISTER && reg_renumber[FUNC2 (x)] >= 0)
	return reg_renumber[FUNC2 (x)];
      return FUNC2 (x);
    }
  if (FUNC0 (x) == SUBREG)
    {
      int base = FUNC8 (FUNC5 (x));
      if (base >= 0
	  && base < FIRST_PSEUDO_REGISTER
	  && FUNC6 (FUNC2 (FUNC5 (x)),
					    FUNC1 (FUNC5 (x)),
					    FUNC4 (x), FUNC1 (x)))
	return base + FUNC7 (FUNC2 (FUNC5 (x)),
					   FUNC1 (FUNC5 (x)),
					   FUNC4 (x), FUNC1 (x));
    }
  return -1;
}