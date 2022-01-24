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
typedef  int /*<<< orphan*/  regset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  reload_completed ; 

__attribute__((used)) static int
FUNC6 (regset set, rtx reg, int value)
{
  unsigned regno = FUNC2 (reg);
  int nregs, i, old;

  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      FUNC5 (!reload_completed);
      nregs = 1;
    }
  else
    nregs = hard_regno_nregs[regno][FUNC1 (reg)];
  for (old = 0, i = nregs; --i >= 0; regno++)
    {
      if ((value != 0) == FUNC3 (set, regno))
	continue;
      if (value)
	old++, FUNC4 (set, regno);
      else
	old--, FUNC0 (set, regno);
    }
  return old;
}