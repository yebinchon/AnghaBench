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
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 int NO_REGS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/ * reg_class_contents ; 

int
FUNC2 (rtx operand, enum reg_class cl, int offset,
		  enum machine_mode mode)
{
  int regno = FUNC0 (operand);

  if (cl == NO_REGS)
    return 0;

  if (regno < FIRST_PSEUDO_REGISTER
      && FUNC1 (reg_class_contents[(int) cl],
			    regno + offset))
    {
      int sr;
      regno += offset;
      for (sr = hard_regno_nregs[regno][mode] - 1;
	   sr > 0; sr--)
	if (! FUNC1 (reg_class_contents[(int) cl],
				 regno + sr))
	  break;
      return sr == 0;
    }

  return 0;
}