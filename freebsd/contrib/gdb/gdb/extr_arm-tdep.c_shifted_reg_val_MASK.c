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

/* Variables and functions */
 scalar_t__ ARM_PC_32 ; 
 scalar_t__ FUNC0 (unsigned long,int) ; 
 void* FUNC1 (unsigned long,int,int) ; 
 unsigned long FUNC2 (int) ; 

__attribute__((used)) static unsigned long
FUNC3 (unsigned long inst, int carry, unsigned long pc_val,
		 unsigned long status_reg)
{
  unsigned long res, shift;
  int rm = FUNC1 (inst, 0, 3);
  unsigned long shifttype = FUNC1 (inst, 5, 6);

  if (FUNC0 (inst, 4))
    {
      int rs = FUNC1 (inst, 8, 11);
      shift = (rs == 15 ? pc_val + 8 : FUNC2 (rs)) & 0xFF;
    }
  else
    shift = FUNC1 (inst, 7, 11);

  res = (rm == 15
	 ? ((pc_val | (ARM_PC_32 ? 0 : status_reg))
	    + (FUNC0 (inst, 4) ? 12 : 8))
	 : FUNC2 (rm));

  switch (shifttype)
    {
    case 0:			/* LSL */
      res = shift >= 32 ? 0 : res << shift;
      break;

    case 1:			/* LSR */
      res = shift >= 32 ? 0 : res >> shift;
      break;

    case 2:			/* ASR */
      if (shift >= 32)
	shift = 31;
      res = ((res & 0x80000000L)
	     ? ~((~res) >> shift) : res >> shift);
      break;

    case 3:			/* ROR/RRX */
      shift &= 31;
      if (shift == 0)
	res = (res >> 1) | (carry ? 0x80000000L : 0);
      else
	res = (res >> shift) | (res << (32 - shift));
      break;
    }

  return res & 0xffffffff;
}