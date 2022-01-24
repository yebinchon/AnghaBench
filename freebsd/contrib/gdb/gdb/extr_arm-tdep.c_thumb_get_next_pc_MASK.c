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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ARM_PS_REGNUM ; 
 int ARM_SP_REGNUM ; 
 unsigned long DEPRECATED_REGISTER_SIZE ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (unsigned short,int,int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned short FUNC5 (int,int) ; 
 void* FUNC6 (int) ; 
 int FUNC7 (unsigned short,int /*<<< orphan*/ ,int) ; 

CORE_ADDR
FUNC8 (CORE_ADDR pc)
{
  unsigned long pc_val = ((unsigned long) pc) + 4;	/* PC after prefetch */
  unsigned short inst1 = FUNC5 (pc, 2);
  CORE_ADDR nextpc = pc + 2;		/* default is next instruction */
  unsigned long offset;

  if ((inst1 & 0xff00) == 0xbd00)	/* pop {rlist, pc} */
    {
      CORE_ADDR sp;

      /* Fetch the saved PC from the stack.  It's stored above
         all of the other registers.  */
      offset = FUNC1 (FUNC2 (inst1, 0, 7)) * DEPRECATED_REGISTER_SIZE;
      sp = FUNC6 (ARM_SP_REGNUM);
      nextpc = (CORE_ADDR) FUNC5 (sp + offset, 4);
      nextpc = FUNC0 (nextpc);
      if (nextpc == pc)
	FUNC4 ("Infinite loop detected");
    }
  else if ((inst1 & 0xf000) == 0xd000)	/* conditional branch */
    {
      unsigned long status = FUNC6 (ARM_PS_REGNUM);
      unsigned long cond = FUNC2 (inst1, 8, 11);
      if (cond != 0x0f && FUNC3 (cond, status))    /* 0x0f = SWI */
	nextpc = pc_val + (FUNC7 (inst1, 0, 7) << 1);
    }
  else if ((inst1 & 0xf800) == 0xe000)	/* unconditional branch */
    {
      nextpc = pc_val + (FUNC7 (inst1, 0, 10) << 1);
    }
  else if ((inst1 & 0xf800) == 0xf000)	/* long branch with link, and blx */
    {
      unsigned short inst2 = FUNC5 (pc + 2, 2);
      offset = (FUNC7 (inst1, 0, 10) << 12) + (FUNC2 (inst2, 0, 10) << 1);
      nextpc = pc_val + offset;
      /* For BLX make sure to clear the low bits.  */
      if (FUNC2 (inst2, 11, 12) == 1)
	nextpc = nextpc & 0xfffffffc;
    }
  else if ((inst1 & 0xff00) == 0x4700)	/* bx REG, blx REG */
    {
      if (FUNC2 (inst1, 3, 6) == 0x0f)
	nextpc = pc_val;
      else
	nextpc = FUNC6 (FUNC2 (inst1, 3, 6));

      nextpc = FUNC0 (nextpc);
      if (nextpc == pc)
	FUNC4 ("Infinite loop detected");
    }

  return nextpc;
}