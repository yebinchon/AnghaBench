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
struct TYPE_2__ {int fp_control_status; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (unsigned long) ; 
 int FUNC9 (unsigned long) ; 

__attribute__((used)) static CORE_ADDR
FUNC10 (CORE_ADDR pc)
{
  unsigned long inst;
  int op;
  inst = FUNC5 (pc);
  if ((inst & 0xe0000000) != 0)	/* Not a special, jump or branch instruction */
    {
      if (FUNC0 (inst) >> 2 == 5)
	/* BEQL, BNEL, BLEZL, BGTZL: bits 0101xx */
	{
	  op = (FUNC0 (inst) & 0x03);
	  switch (op)
	    {
	    case 0:		/* BEQL */
	      goto equal_branch;
	    case 1:		/* BNEL */
	      goto neq_branch;
	    case 2:		/* BLEZL */
	      goto less_branch;
	    case 3:		/* BGTZ */
	      goto greater_branch;
	    default:
	      pc += 4;
	    }
	}
      else if (FUNC0 (inst) == 17 && FUNC1 (inst) == 8)
	/* BC1F, BC1FL, BC1T, BC1TL: 010001 01000 */
	{
	  int tf = FUNC2 (inst) & 0x01;
	  int cnum = FUNC2 (inst) >> 2;
	  int fcrcs =
	    FUNC7 (FUNC6 (current_gdbarch)->
				  fp_control_status);
	  int cond = ((fcrcs >> 24) & 0x0e) | ((fcrcs >> 23) & 0x01);

	  if (((cond >> cnum) & 0x01) == tf)
	    pc += FUNC4 (inst) + 4;
	  else
	    pc += 8;
	}
      else
	pc += 4;		/* Not a branch, next instruction is easy */
    }
  else
    {				/* This gets way messy */

      /* Further subdivide into SPECIAL, REGIMM and other */
      switch (op = FUNC0 (inst) & 0x07)	/* extract bits 28,27,26 */
	{
	case 0:		/* SPECIAL */
	  op = FUNC8 (inst);
	  switch (op)
	    {
	    case 8:		/* JR */
	    case 9:		/* JALR */
	      /* Set PC to that address */
	      pc = FUNC7 (FUNC9 (inst));
	      break;
	    default:
	      pc += 4;
	    }

	  break;		/* end SPECIAL */
	case 1:		/* REGIMM */
	  {
	    op = FUNC2 (inst);	/* branch condition */
	    switch (op)
	      {
	      case 0:		/* BLTZ */
	      case 2:		/* BLTZL */
	      case 16:		/* BLTZAL */
	      case 18:		/* BLTZALL */
	      less_branch:
		if (FUNC7 (FUNC1 (inst)) < 0)
		  pc += FUNC4 (inst) + 4;
		else
		  pc += 8;	/* after the delay slot */
		break;
	      case 1:		/* BGEZ */
	      case 3:		/* BGEZL */
	      case 17:		/* BGEZAL */
	      case 19:		/* BGEZALL */
		if (FUNC7 (FUNC1 (inst)) >= 0)
		  pc += FUNC4 (inst) + 4;
		else
		  pc += 8;	/* after the delay slot */
		break;
		/* All of the other instructions in the REGIMM category */
	      default:
		pc += 4;
	      }
	  }
	  break;		/* end REGIMM */
	case 2:		/* J */
	case 3:		/* JAL */
	  {
	    unsigned long reg;
	    reg = FUNC3 (inst) << 2;
	    /* Upper four bits get never changed... */
	    pc = reg + ((pc + 4) & 0xf0000000);
	  }
	  break;
	  /* FIXME case JALX : */
	  {
	    unsigned long reg;
	    reg = FUNC3 (inst) << 2;
	    pc = reg + ((pc + 4) & 0xf0000000) + 1;	/* yes, +1 */
	    /* Add 1 to indicate 16 bit mode - Invert ISA mode */
	  }
	  break;		/* The new PC will be alternate mode */
	case 4:		/* BEQ, BEQL */
	equal_branch:
	  if (FUNC7 (FUNC1 (inst)) ==
	      FUNC7 (FUNC2 (inst)))
	    pc += FUNC4 (inst) + 4;
	  else
	    pc += 8;
	  break;
	case 5:		/* BNE, BNEL */
	neq_branch:
	  if (FUNC7 (FUNC1 (inst)) !=
	      FUNC7 (FUNC2 (inst)))
	    pc += FUNC4 (inst) + 4;
	  else
	    pc += 8;
	  break;
	case 6:		/* BLEZ, BLEZL */
	  if (FUNC7 (FUNC1 (inst) <= 0))
	    pc += FUNC4 (inst) + 4;
	  else
	    pc += 8;
	  break;
	case 7:
	default:
	greater_branch:	/* BGTZ, BGTZL */
	  if (FUNC7 (FUNC1 (inst) > 0))
	    pc += FUNC4 (inst) + 4;
	  else
	    pc += 8;
	  break;
	}			/* switch */
    }				/* else */
  return pc;
}