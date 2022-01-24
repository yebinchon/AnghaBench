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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 unsigned long ARM_PS_REGNUM ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned long) ; 
 unsigned long FLAG_C ; 
 unsigned long INST_NV ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (unsigned long,int) ; 
 int FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (unsigned long,int,int) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 unsigned long FUNC9 (scalar_t__,int) ; 
 unsigned long FUNC10 (unsigned long) ; 
 unsigned long FUNC11 (unsigned long,int,unsigned long,unsigned long) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

CORE_ADDR
FUNC13 (CORE_ADDR pc)
{
  unsigned long pc_val;
  unsigned long this_instr;
  unsigned long status;
  CORE_ADDR nextpc;

  if (FUNC2 (pc))
    return FUNC12 (pc);

  pc_val = (unsigned long) pc;
  this_instr = FUNC9 (pc, 4);
  status = FUNC10 (ARM_PS_REGNUM);
  nextpc = (CORE_ADDR) (pc_val + 4);	/* Default case */

  if (FUNC6 (FUNC5 (this_instr, 28, 31), status))
    {
      switch (FUNC5 (this_instr, 24, 27))
	{
	case 0x0:
	case 0x1:			/* data processing */
	case 0x2:
	case 0x3:
	  {
	    unsigned long operand1, operand2, result = 0;
	    unsigned long rn;
	    int c;

	    if (FUNC5 (this_instr, 12, 15) != 15)
	      break;

	    if (FUNC5 (this_instr, 22, 25) == 0
		&& FUNC5 (this_instr, 4, 7) == 9)	/* multiply */
	      FUNC7 ("Illegal update to pc in instruction");

	    /* BX <reg>, BLX <reg> */
	    if (FUNC5 (this_instr, 4, 28) == 0x12fff1
		|| FUNC5 (this_instr, 4, 28) == 0x12fff3)
	      {
		rn = FUNC5 (this_instr, 0, 3);
		result = (rn == 15) ? pc_val + 8 : FUNC10 (rn);
		nextpc = (CORE_ADDR) FUNC0 (result);

		if (nextpc == pc)
		  FUNC7 ("Infinite loop detected");

		return nextpc;
	      }

	    /* Multiply into PC */
	    c = (status & FLAG_C) ? 1 : 0;
	    rn = FUNC5 (this_instr, 16, 19);
	    operand1 = (rn == 15) ? pc_val + 8 : FUNC10 (rn);

	    if (FUNC3 (this_instr, 25))
	      {
		unsigned long immval = FUNC5 (this_instr, 0, 7);
		unsigned long rotate = 2 * FUNC5 (this_instr, 8, 11);
		operand2 = ((immval >> rotate) | (immval << (32 - rotate)))
		  & 0xffffffff;
	      }
	    else		/* operand 2 is a shifted register */
	      operand2 = FUNC11 (this_instr, c, pc_val, status);

	    switch (FUNC5 (this_instr, 21, 24))
	      {
	      case 0x0:	/*and */
		result = operand1 & operand2;
		break;

	      case 0x1:	/*eor */
		result = operand1 ^ operand2;
		break;

	      case 0x2:	/*sub */
		result = operand1 - operand2;
		break;

	      case 0x3:	/*rsb */
		result = operand2 - operand1;
		break;

	      case 0x4:	/*add */
		result = operand1 + operand2;
		break;

	      case 0x5:	/*adc */
		result = operand1 + operand2 + c;
		break;

	      case 0x6:	/*sbc */
		result = operand1 - operand2 + c;
		break;

	      case 0x7:	/*rsc */
		result = operand2 - operand1 + c;
		break;

	      case 0x8:
	      case 0x9:
	      case 0xa:
	      case 0xb:	/* tst, teq, cmp, cmn */
		result = (unsigned long) nextpc;
		break;

	      case 0xc:	/*orr */
		result = operand1 | operand2;
		break;

	      case 0xd:	/*mov */
		/* Always step into a function.  */
		result = operand2;
		break;

	      case 0xe:	/*bic */
		result = operand1 & ~operand2;
		break;

	      case 0xf:	/*mvn */
		result = ~operand2;
		break;
	      }
	    nextpc = (CORE_ADDR) FUNC0 (result);

	    if (nextpc == pc)
	      FUNC7 ("Infinite loop detected");
	    break;
	  }

	case 0x4:
	case 0x5:		/* data transfer */
	case 0x6:
	case 0x7:
	  if (FUNC3 (this_instr, 20))
	    {
	      /* load */
	      if (FUNC5 (this_instr, 12, 15) == 15)
		{
		  /* rd == pc */
		  unsigned long rn;
		  unsigned long base;

		  if (FUNC3 (this_instr, 22))
		    FUNC7 ("Illegal update to pc in instruction");

		  /* byte write to PC */
		  rn = FUNC5 (this_instr, 16, 19);
		  base = (rn == 15) ? pc_val + 8 : FUNC10 (rn);
		  if (FUNC3 (this_instr, 24))
		    {
		      /* pre-indexed */
		      int c = (status & FLAG_C) ? 1 : 0;
		      unsigned long offset =
		      (FUNC3 (this_instr, 25)
		       ? FUNC11 (this_instr, c, pc_val, status)
		       : FUNC5 (this_instr, 0, 11));

		      if (FUNC3 (this_instr, 23))
			base += offset;
		      else
			base -= offset;
		    }
		  nextpc = (CORE_ADDR) FUNC9 ((CORE_ADDR) base,
							    4);

		  nextpc = FUNC0 (nextpc);

		  if (nextpc == pc)
		    FUNC7 ("Infinite loop detected");
		}
	    }
	  break;

	case 0x8:
	case 0x9:		/* block transfer */
	  if (FUNC3 (this_instr, 20))
	    {
	      /* LDM */
	      if (FUNC3 (this_instr, 15))
		{
		  /* loading pc */
		  int offset = 0;

		  if (FUNC3 (this_instr, 23))
		    {
		      /* up */
		      unsigned long reglist = FUNC5 (this_instr, 0, 14);
		      offset = FUNC4 (reglist) * 4;
		      if (FUNC3 (this_instr, 24))		/* pre */
			offset += 4;
		    }
		  else if (FUNC3 (this_instr, 24))
		    offset = -4;

		  {
		    unsigned long rn_val =
		    FUNC10 (FUNC5 (this_instr, 16, 19));
		    nextpc =
		      (CORE_ADDR) FUNC9 ((CORE_ADDR) (rn_val
								  + offset),
						       4);
		  }
		  nextpc = FUNC0 (nextpc);
		  if (nextpc == pc)
		    FUNC7 ("Infinite loop detected");
		}
	    }
	  break;

	case 0xb:		/* branch & link */
	case 0xa:		/* branch */
	  {
	    nextpc = FUNC1 (pc, this_instr);

	    /* BLX */
	    if (FUNC5 (this_instr, 28, 31) == INST_NV)
	      nextpc |= FUNC3 (this_instr, 24) << 1;

	    nextpc = FUNC0 (nextpc);
	    if (nextpc == pc)
	      FUNC7 ("Infinite loop detected");
	    break;
	  }

	case 0xc:
	case 0xd:
	case 0xe:		/* coproc ops */
	case 0xf:		/* SWI */
	  break;

	default:
	  FUNC8 (gdb_stderr, "Bad bit-field extraction\n");
	  return (pc);
	}
    }

  return nextpc;
}