#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int death; } ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int,int) ; 
 TYPE_1__* qty ; 
 int* reg_qty ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int this_insn_number ; 

__attribute__((used)) static void
FUNC9 (rtx reg, int birth)
{
  int regno;

  if (FUNC0 (reg) == SUBREG)
    {
      regno = FUNC3 (FUNC4 (reg));
      if (regno < FIRST_PSEUDO_REGISTER)
	regno = FUNC8 (reg);
    }
  else
    regno = FUNC3 (reg);

  if (regno < FIRST_PSEUDO_REGISTER)
    {
      FUNC6 (regno, FUNC1 (reg), 1);

      /* If the register was to have been born earlier that the present
	 insn, mark it as live where it is actually born.  */
      if (birth < 2 * this_insn_number)
	FUNC7 (regno, FUNC1 (reg), 1, birth, 2 * this_insn_number);
    }
  else
    {
      if (reg_qty[regno] == -2)
	FUNC5 (regno, FUNC1 (reg), FUNC2 (regno), birth);

      /* If this register has a quantity number, show that it isn't dead.  */
      if (reg_qty[regno] >= 0)
	qty[reg_qty[regno]].death = -1;
    }
}