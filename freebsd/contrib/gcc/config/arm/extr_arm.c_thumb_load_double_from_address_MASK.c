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
#define  CONST 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 130 
 int const MEM ; 
#define  PLUS 129 
#define  REG 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 

const char *
FUNC9 (rtx *operands)
{
  rtx addr;
  rtx base;
  rtx offset;
  rtx arg1;
  rtx arg2;

  FUNC6 (FUNC1 (operands[0]) == REG);
  FUNC6 (FUNC1 (operands[1]) == MEM);

  /* Get the memory address.  */
  addr = FUNC3 (operands[1], 0);

  /* Work out how the memory address is computed.  */
  switch (FUNC1 (addr))
    {
    case REG:
      operands[2] = FUNC4 (operands[1], SImode, 4);

      if (FUNC2 (operands[0]) == FUNC2 (addr))
	{
	  FUNC8 ("ldr\t%H0, %2", operands);
	  FUNC8 ("ldr\t%0, %1", operands);
	}
      else
	{
	  FUNC8 ("ldr\t%0, %1", operands);
	  FUNC8 ("ldr\t%H0, %2", operands);
	}
      break;

    case CONST:
      /* Compute <address> + 4 for the high order load.  */
      operands[2] = FUNC4 (operands[1], SImode, 4);

      FUNC8 ("ldr\t%0, %1", operands);
      FUNC8 ("ldr\t%H0, %2", operands);
      break;

    case PLUS:
      arg1   = FUNC3 (addr, 0);
      arg2   = FUNC3 (addr, 1);

      if (FUNC0 (arg1))
	base = arg2, offset = arg1;
      else
	base = arg1, offset = arg2;

      FUNC6 (FUNC1 (base) == REG);

      /* Catch the case of <address> = <reg> + <reg> */
      if (FUNC1 (offset) == REG)
	{
	  int reg_offset = FUNC2 (offset);
	  int reg_base   = FUNC2 (base);
	  int reg_dest   = FUNC2 (operands[0]);

	  /* Add the base and offset registers together into the
             higher destination register.  */
	  FUNC5 (asm_out_file, "\tadd\t%r, %r, %r",
		       reg_dest + 1, reg_base, reg_offset);

	  /* Load the lower destination register from the address in
             the higher destination register.  */
	  FUNC5 (asm_out_file, "\tldr\t%r, [%r, #0]",
		       reg_dest, reg_dest + 1);

	  /* Load the higher destination register from its own address
             plus 4.  */
	  FUNC5 (asm_out_file, "\tldr\t%r, [%r, #4]",
		       reg_dest + 1, reg_dest + 1);
	}
      else
	{
	  /* Compute <address> + 4 for the high order load.  */
	  operands[2] = FUNC4 (operands[1], SImode, 4);

	  /* If the computed address is held in the low order register
	     then load the high order register first, otherwise always
	     load the low order register first.  */
	  if (FUNC2 (operands[0]) == FUNC2 (base))
	    {
	      FUNC8 ("ldr\t%H0, %2", operands);
	      FUNC8 ("ldr\t%0, %1", operands);
	    }
	  else
	    {
	      FUNC8 ("ldr\t%0, %1", operands);
	      FUNC8 ("ldr\t%H0, %2", operands);
	    }
	}
      break;

    case LABEL_REF:
      /* With no registers to worry about we can just load the value
         directly.  */
      operands[2] = FUNC4 (operands[1], SImode, 4);

      FUNC8 ("ldr\t%H0, %2", operands);
      FUNC8 ("ldr\t%0, %1", operands);
      break;

    default:
      FUNC7 ();
    }

  return "";
}