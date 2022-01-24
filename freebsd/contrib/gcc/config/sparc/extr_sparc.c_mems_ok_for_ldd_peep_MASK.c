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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 

int
FUNC6 (rtx mem1, rtx mem2, rtx dependent_reg_rtx)
{
  rtx addr1, addr2;
  unsigned int reg1;
  HOST_WIDE_INT offset1;

  /* The mems cannot be volatile.  */
  if (FUNC3 (mem1) || FUNC3 (mem2))
    return 0;

  /* MEM1 should be aligned on a 64-bit boundary.  */
  if (FUNC2 (mem1) < 64)
    return 0;
  
  addr1 = FUNC5 (mem1, 0);
  addr2 = FUNC5 (mem2, 0);
  
  /* Extract a register number and offset (if used) from the first addr.  */
  if (FUNC0 (addr1) == PLUS)
    {
      /* If not a REG, return zero.  */
      if (FUNC0 (FUNC5 (addr1, 0)) != REG)
	return 0;
      else
	{
          reg1 = FUNC4 (FUNC5 (addr1, 0));
	  /* The offset must be constant!  */
	  if (FUNC0 (FUNC5 (addr1, 1)) != CONST_INT)
            return 0;
          offset1 = FUNC1 (FUNC5 (addr1, 1));
	}
    }
  else if (FUNC0 (addr1) != REG)
    return 0;
  else
    {
      reg1 = FUNC4 (addr1);
      /* This was a simple (mem (reg)) expression.  Offset is 0.  */
      offset1 = 0;
    }

  /* Make sure the second address is a (mem (plus (reg) (const_int).  */
  if (FUNC0 (addr2) != PLUS)
    return 0;

  if (FUNC0 (FUNC5 (addr2, 0)) != REG
      || FUNC0 (FUNC5 (addr2, 1)) != CONST_INT)
    return 0;

  if (reg1 != FUNC4 (FUNC5 (addr2, 0)))
    return 0;

  if (dependent_reg_rtx != NULL_RTX && reg1 == FUNC4 (dependent_reg_rtx))
    return 0;
  
  /* The first offset must be evenly divisible by 8 to ensure the 
     address is 64 bit aligned.  */
  if (offset1 % 8 != 0)
    return 0;

  /* The offset for the second addr must be 4 more than the first addr.  */
  if (FUNC1 (FUNC5 (addr2, 1)) != offset1 + 4)
    return 0;

  /* All the tests passed.  addr1 and addr2 are valid for ldd and std
     instructions.  */
  return 1;
}