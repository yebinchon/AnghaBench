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
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__* reg_equiv_constant ; 
 scalar_t__* reg_renumber ; 

__attribute__((used)) static rtx
FUNC5 (rtx addr)
{
  rtx op0 = 0, op1 = 0, op2 = 0;
  rtx tem;
  int regno;

  if (FUNC0 (addr) == PLUS)
    {
      /* Try to find a register to replace.  */
      op0 = FUNC3 (addr, 0), op1 = FUNC3 (addr, 1), op2 = 0;
      if (FUNC2 (op0)
	  && (regno = FUNC1 (op0)) >= FIRST_PSEUDO_REGISTER
	  && reg_renumber[regno] < 0
	  && reg_equiv_constant[regno] != 0)
	op0 = reg_equiv_constant[regno];
      else if (FUNC2 (op1)
	       && (regno = FUNC1 (op1)) >= FIRST_PSEUDO_REGISTER
	       && reg_renumber[regno] < 0
	       && reg_equiv_constant[regno] != 0)
	op1 = reg_equiv_constant[regno];
      else if (FUNC0 (op0) == PLUS
	       && (tem = FUNC5 (op0)) != op0)
	op0 = tem;
      else if (FUNC0 (op1) == PLUS
	       && (tem = FUNC5 (op1)) != op1)
	op1 = tem;
      else
	return addr;

      /* Pick out up to three things to add.  */
      if (FUNC0 (op1) == PLUS)
	op2 = FUNC3 (op1, 1), op1 = FUNC3 (op1, 0);
      else if (FUNC0 (op0) == PLUS)
	op2 = op1, op1 = FUNC3 (op0, 1), op0 = FUNC3 (op0, 0);

      /* Compute the sum.  */
      if (op2 != 0)
	op1 = FUNC4 (op1, op2);
      if (op1 != 0)
	op0 = FUNC4 (op0, op1);

      return op0;
    }
  return addr;
}