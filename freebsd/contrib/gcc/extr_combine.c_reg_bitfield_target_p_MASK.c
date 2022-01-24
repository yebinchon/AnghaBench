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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTRACT ; 
 unsigned int** hard_regno_nregs ; 

__attribute__((used)) static int
FUNC9 (rtx x, rtx body)
{
  int i;

  if (FUNC0 (body) == SET)
    {
      rtx dest = FUNC4 (body);
      rtx target;
      unsigned int regno, tregno, endregno, endtregno;

      if (FUNC0 (dest) == ZERO_EXTRACT)
	target = FUNC6 (dest, 0);
      else if (FUNC0 (dest) == STRICT_LOW_PART)
	target = FUNC5 (FUNC6 (dest, 0));
      else
	return 0;

      if (FUNC0 (target) == SUBREG)
	target = FUNC5 (target);

      if (!FUNC3 (target))
	return 0;

      tregno = FUNC2 (target), regno = FUNC2 (x);
      if (tregno >= FIRST_PSEUDO_REGISTER || regno >= FIRST_PSEUDO_REGISTER)
	return target == x;

      endtregno = tregno + hard_regno_nregs[tregno][FUNC1 (target)];
      endregno = regno + hard_regno_nregs[regno][FUNC1 (x)];

      return endregno > tregno && regno < endtregno;
    }

  else if (FUNC0 (body) == PARALLEL)
    for (i = FUNC8 (body, 0) - 1; i >= 0; i--)
      if (FUNC9 (x, FUNC7 (body, 0, i)))
	return 1;

  return 0;
}