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
typedef  int rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int REGNO ;
typedef  int INSN_CODE ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_INT ; 
 int FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int,int,size_t) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int HOST_BITS_PER_INT ; 
 int MAX_MACHINE_MODE ; 
 int MOVE_MAX_WORDS ; 
 int /*<<< orphan*/  PLUS ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 size_t Pmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 size_t VOIDmode ; 
 scalar_t__ FUNC6 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  call_fixed_reg_set ; 
 int* call_fixed_regs ; 
 scalar_t__* call_used_regs ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (size_t,int) ; 
 int FUNC12 (size_t,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (size_t,int) ; 
 int FUNC14 (size_t,int,int) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/ * reg_class_contents ; 
 int** reg_restore_code ; 
 int** reg_save_code ; 
 size_t** regno_save_mode ; 
 int /*<<< orphan*/  FUNC16 (size_t,int) ; 

void
FUNC17 (void)
{
  rtx addr_reg;
  int offset;
  rtx address;
  int i, j;
  enum machine_mode mode;
  rtx savepat, restpat;
  rtx test_reg, test_mem;
  rtx saveinsn, restinsn;

  /* First find all the registers that we need to deal with and all
     the modes that they can have.  If we can't find a mode to use,
     we can't have the register live over calls.  */

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    {
      if (call_used_regs[i] && ! call_fixed_regs[i])
	{
	  for (j = 1; j <= MOVE_MAX_WORDS; j++)
	    {
	      regno_save_mode[i][j] = FUNC1 (i, j,
								   VOIDmode);
	      if (regno_save_mode[i][j] == VOIDmode && j == 1)
		{
		  call_fixed_regs[i] = 1;
		  FUNC4 (call_fixed_reg_set, i);
		}
	    }
	}
      else
	regno_save_mode[i][1] = VOIDmode;
    }

  /* The following code tries to approximate the conditions under which
     we can easily save and restore a register without scratch registers or
     other complexities.  It will usually work, except under conditions where
     the validity of an insn operand is dependent on the address offset.
     No such cases are currently known.

     We first find a typical offset from some BASE_REG_CLASS register.
     This address is chosen by finding the first register in the class
     and by finding the smallest power of two that is a valid offset from
     that register in every mode we will use to save registers.  */

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (FUNC5
	(reg_class_contents
	 [(int) FUNC6 (regno_save_mode [i][1], PLUS, CONST_INT)], i))
      break;

  FUNC9 (i < FIRST_PSEUDO_REGISTER);

  addr_reg = FUNC13 (Pmode, i);

  for (offset = 1 << (HOST_BITS_PER_INT / 2); offset; offset >>= 1)
    {
      address = FUNC12 (Pmode, addr_reg, FUNC0 (offset));

      for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
	if (regno_save_mode[i][1] != VOIDmode
	  && ! FUNC16 (regno_save_mode[i][1], address))
	  break;

      if (i == FIRST_PSEUDO_REGISTER)
	break;
    }

  /* If we didn't find a valid address, we must use register indirect.  */
  if (offset == 0)
    address = addr_reg;

  /* Next we try to form an insn to save and restore the register.  We
     see if such an insn is recognized and meets its constraints.

     To avoid lots of unnecessary RTL allocation, we construct all the RTL
     once, then modify the memory and register operands in-place.  */

  test_reg = FUNC13 (VOIDmode, 0);
  test_mem = FUNC11 (VOIDmode, address);
  savepat = FUNC14 (VOIDmode, test_mem, test_reg);
  restpat = FUNC14 (VOIDmode, test_reg, test_mem);

  saveinsn = FUNC10 (VOIDmode, 0, 0, 0, 0, 0, savepat, -1, 0, 0);
  restinsn = FUNC10 (VOIDmode, 0, 0, 0, 0, 0, restpat, -1, 0, 0);

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    for (mode = 0 ; mode < MAX_MACHINE_MODE; mode++)
      if (FUNC2 (i, mode))
	{
	  int ok;

	  /* Update the register number and modes of the register
	     and memory operand.  */
	  REGNO (test_reg) = i;
	  FUNC3 (test_reg, mode);
	  FUNC3 (test_mem, mode);

	  /* Force re-recognition of the modified insns.  */
	  INSN_CODE (saveinsn) = -1;
	  INSN_CODE (restinsn) = -1;

	  reg_save_code[i][mode] = FUNC15 (saveinsn);
	  reg_restore_code[i][mode] = FUNC15 (restinsn);

	  /* Now extract both insns and see if we can meet their
	     constraints.  */
	  ok = (reg_save_code[i][mode] != -1
		&& reg_restore_code[i][mode] != -1);
	  if (ok)
	    {
	      FUNC8 (saveinsn);
	      ok = FUNC7 (1);
	      FUNC8 (restinsn);
	      ok &= FUNC7 (1);
	    }

	  if (! ok)
	    {
	      reg_save_code[i][mode] = -1;
	      reg_restore_code[i][mode] = -1;
	    }
	}
      else
	{
	  reg_save_code[i][mode] = -1;
	  reg_restore_code[i][mode] = -1;
	}

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    for (j = 1; j <= MOVE_MAX_WORDS; j++)
      if (reg_save_code [i][regno_save_mode[i][j]] == -1)
	{
	  regno_save_mode[i][j] = VOIDmode;
	  if (j == 1)
	    {
	      call_fixed_regs[i] = 1;
	      FUNC4 (call_fixed_reg_set, i);
	    }
	}
}