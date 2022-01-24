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
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fixed_regs ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__* reg_allocno ; 
 int* reg_renumber ; 

__attribute__((used)) static void
FUNC6 (rtx reg)
{
  int regno;

  if (FUNC0 (reg) == SUBREG)
    reg = FUNC4 (reg);

  if (!FUNC3 (reg))
    return;

  regno = FUNC2 (reg);

  /* Either this is one of the max_allocno pseudo regs not allocated,
     or it is or has a hardware reg.  First handle the pseudo-regs.  */
  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      if (reg_allocno[regno] >= 0)
	FUNC5 (regno);
    }

  if (reg_renumber[regno] >= 0)
    regno = reg_renumber[regno];

  /* Handle hardware regs (and pseudos allocated to hard regs).  */
  if (regno < FIRST_PSEUDO_REGISTER && ! fixed_regs[regno])
    {
      int last = regno + hard_regno_nregs[regno][FUNC1 (reg)];
      while (regno < last)
	{
	  FUNC5 (regno);
	  regno++;
	}
    }
}