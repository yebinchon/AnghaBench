#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int sibcall_blocked; scalar_t__ lr_save_eliminated; } ;

/* Variables and functions */
 scalar_t__ ARM_FT_NORMAL ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int ARM_HARD_FRAME_POINTER_REGNUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int IP_REGNUM ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int LR_REGNUM ; 
 int PC_REGNUM ; 
 scalar_t__ TARGET_REALLY_IWMMXT ; 
 unsigned int FUNC4 () ; 
 unsigned long FUNC5 () ; 
 int FUNC6 (unsigned int) ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  current_function_calls_eh_return ; 
 int /*<<< orphan*/  current_function_pretend_args_size ; 
 scalar_t__ frame_pointer_needed ; 
 scalar_t__ optimize_size ; 
 scalar_t__* regs_ever_live ; 

__attribute__((used)) static unsigned long
FUNC7 (void)
{
  unsigned int save_reg_mask = 0;
  unsigned long func_type = FUNC5 ();

  if (FUNC2 (func_type))
    /* This should never really happen.  */
    return 0;

  /* If we are creating a stack frame, then we must save the frame pointer,
     IP (which will hold the old stack pointer), LR and the PC.  */
  if (frame_pointer_needed)
    save_reg_mask |=
      (1 << ARM_HARD_FRAME_POINTER_REGNUM)
      | (1 << IP_REGNUM)
      | (1 << LR_REGNUM)
      | (1 << PC_REGNUM);

  /* Volatile functions do not return, so there
     is no need to save any other registers.  */
  if (FUNC3 (func_type))
    return save_reg_mask;

  save_reg_mask |= FUNC4 ();

  /* Decide if we need to save the link register.
     Interrupt routines have their own banked link register,
     so they never need to save it.
     Otherwise if we do not use the link register we do not need to save
     it.  If we are pushing other registers onto the stack however, we
     can save an instruction in the epilogue by pushing the link register
     now and then popping it back into the PC.  This incurs extra memory
     accesses though, so we only do it when optimizing for size, and only
     if we know that we will not need a fancy return sequence.  */
  if (regs_ever_live [LR_REGNUM]
	  || (save_reg_mask
	      && optimize_size
	      && FUNC0 (func_type) == ARM_FT_NORMAL
	      && !current_function_calls_eh_return))
    save_reg_mask |= 1 << LR_REGNUM;

  if (cfun->machine->lr_save_eliminated)
    save_reg_mask &= ~ (1 << LR_REGNUM);

  if (TARGET_REALLY_IWMMXT
      && ((FUNC6 (save_reg_mask)
	   + FUNC1 (current_function_pretend_args_size)) % 2) != 0)
    {
      unsigned int reg;

      /* The total number of registers that are going to be pushed
	 onto the stack is odd.  We need to ensure that the stack
	 is 64-bit aligned before we start to save iWMMXt registers,
	 and also before we start to create locals.  (A local variable
	 might be a double or long long which we will load/store using
	 an iWMMXt instruction).  Therefore we need to push another
	 ARM register, so that the stack will be 64-bit aligned.  We
	 try to avoid using the arg registers (r0 -r3) as they might be
	 used to pass values in a tail call.  */
      for (reg = 4; reg <= 12; reg++)
	if ((save_reg_mask & (1 << reg)) == 0)
	  break;

      if (reg <= 12)
	save_reg_mask |= (1 << reg);
      else
	{
	  cfun->machine->sibcall_blocked = 1;
	  save_reg_mask |= (1 << 3);
	}
    }

  return save_reg_mask;
}