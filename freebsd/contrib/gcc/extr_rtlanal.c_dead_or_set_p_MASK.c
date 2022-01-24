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
 scalar_t__ CC0 ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int** hard_regno_nregs ; 

int
FUNC6 (rtx insn, rtx x)
{
  unsigned int regno, last_regno;
  unsigned int i;

  /* Can't use cc0_rtx below since this file is used by genattrtab.c.  */
  if (FUNC0 (x) == CC0)
    return 1;

  FUNC5 (FUNC3 (x));

  regno = FUNC2 (x);
  last_regno = (regno >= FIRST_PSEUDO_REGISTER ? regno
		: regno + hard_regno_nregs[regno][FUNC1 (x)] - 1);

  for (i = regno; i <= last_regno; i++)
    if (! FUNC4 (insn, i))
      return 0;

  return 1;
}