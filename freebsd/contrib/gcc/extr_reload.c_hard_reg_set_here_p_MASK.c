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
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int** hard_regno_nregs ; 

__attribute__((used)) static int
FUNC8 (unsigned int beg_regno, unsigned int end_regno, rtx x)
{
  if (FUNC0 (x) == SET || FUNC0 (x) == CLOBBER)
    {
      rtx op0 = FUNC4 (x);

      while (FUNC0 (op0) == SUBREG)
	op0 = FUNC5 (op0);
      if (FUNC3 (op0))
	{
	  unsigned int r = FUNC2 (op0);

	  /* See if this reg overlaps range under consideration.  */
	  if (r < end_regno
	      && r + hard_regno_nregs[r][FUNC1 (op0)] > beg_regno)
	    return 1;
	}
    }
  else if (FUNC0 (x) == PARALLEL)
    {
      int i = FUNC7 (x, 0) - 1;

      for (; i >= 0; i--)
	if (FUNC8 (beg_regno, end_regno, FUNC6 (x, 0, i)))
	  return 1;
    }

  return 0;
}