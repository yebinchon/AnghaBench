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
struct ix86_frame {int nregs; int to_allocate; } ;
typedef  scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ force_align_arg_pointer; scalar_t__ use_fast_prologue_epilogue; } ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ EH_RETURN_STACKADJ_RTX ; 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_EPILOGUE_USING_MOVE ; 
 scalar_t__ TARGET_USE_LEAVE ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  VOIDmode ; 
 TYPE_2__* cfun ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ current_function_args_size ; 
 scalar_t__ current_function_calls_eh_return ; 
 int current_function_pops_args ; 
 scalar_t__ current_function_sp_is_unchanging ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC17 (struct ix86_frame*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int,int) ; 
 scalar_t__ FUNC19 (int,int) ; 
 scalar_t__ optimize_size ; 
 scalar_t__ FUNC20 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ stack_pointer_rtx ; 

void
FUNC22 (int style)
{
  int regno;
  int sp_valid = !frame_pointer_needed || current_function_sp_is_unchanging;
  struct ix86_frame frame;
  HOST_WIDE_INT offset;

  FUNC17 (&frame);

  /* Calculate start of saved registers relative to ebp.  Special care
     must be taken for the normal return case of a function using
     eh_return: the eax and edx registers are marked as saved, but not
     restored along this path.  */
  offset = frame.nregs;
  if (current_function_calls_eh_return && style != 2)
    offset -= 2;
  offset *= -UNITS_PER_WORD;

  /* If we're only restoring one register and sp is not valid then
     using a move instruction to restore the register since it's
     less work than reloading sp and popping the register.

     The default code result in stack adjustment using add/lea instruction,
     while this code results in LEAVE instruction (or discrete equivalent),
     so it is profitable in some other cases as well.  Especially when there
     are no registers to restore.  We also use this code when TARGET_USE_LEAVE
     and there is exactly one register to pop. This heuristic may need some
     tuning in future.  */
  if ((!sp_valid && frame.nregs <= 1)
      || (TARGET_EPILOGUE_USING_MOVE
	  && cfun->machine->use_fast_prologue_epilogue
	  && (frame.nregs > 1 || frame.to_allocate))
      || (frame_pointer_needed && !frame.nregs && frame.to_allocate)
      || (frame_pointer_needed && TARGET_USE_LEAVE
	  && cfun->machine->use_fast_prologue_epilogue
	  && frame.nregs == 1)
      || current_function_calls_eh_return)
    {
      /* Restore registers.  We can use ebp or esp to address the memory
	 locations.  If both are available, default to ebp, since offsets
	 are known to be small.  Only exception is esp pointing directly to the
	 end of block of saved registers, where we may simplify addressing
	 mode.  */

      if (!frame_pointer_needed || (sp_valid && !frame.to_allocate))
	FUNC18 (stack_pointer_rtx,
					  frame.to_allocate, style == 2);
      else
	FUNC18 (hard_frame_pointer_rtx,
					  offset, style == 2);

      /* eh_return epilogues need %ecx added to the stack pointer.  */
      if (style == 2)
	{
	  rtx tmp, sa = EH_RETURN_STACKADJ_RTX;

	  if (frame_pointer_needed)
	    {
	      tmp = FUNC14 (Pmode, hard_frame_pointer_rtx, sa);
	      tmp = FUNC20 (tmp, UNITS_PER_WORD);
	      FUNC1 (FUNC16 (VOIDmode, sa, tmp));

	      tmp = FUNC13 (Pmode, hard_frame_pointer_rtx);
	      FUNC3 (hard_frame_pointer_rtx, tmp);

	      FUNC21 (stack_pointer_rtx, sa,
					 const0_rtx, style);
	    }
	  else
	    {
	      tmp = FUNC14 (Pmode, stack_pointer_rtx, sa);
	      tmp = FUNC20 (tmp, (frame.to_allocate
                                         + frame.nregs * UNITS_PER_WORD));
	      FUNC1 (FUNC16 (VOIDmode, stack_pointer_rtx, tmp));
	    }
	}
      else if (!frame_pointer_needed)
	FUNC21 (stack_pointer_rtx, stack_pointer_rtx,
				   FUNC0 (frame.to_allocate
					    + frame.nregs * UNITS_PER_WORD),
				   style);
      /* If not an i386, mov & pop is faster than "leave".  */
      else if (TARGET_USE_LEAVE || optimize_size
	       || !cfun->machine->use_fast_prologue_epilogue)
	FUNC1 (TARGET_64BIT ? FUNC7 () : FUNC6 ());
      else
	{
	  FUNC21 (stack_pointer_rtx,
				     hard_frame_pointer_rtx,
				     const0_rtx, style);
	  if (TARGET_64BIT)
	    FUNC1 (FUNC8 (hard_frame_pointer_rtx));
	  else
	    FUNC1 (FUNC9 (hard_frame_pointer_rtx));
	}
    }
  else
    {
      /* First step is to deallocate the stack frame so that we can
	 pop the registers.  */
      if (!sp_valid)
	{
	  FUNC4 (frame_pointer_needed);
	  FUNC21 (stack_pointer_rtx,
				     hard_frame_pointer_rtx,
				     FUNC0 (offset), style);
	}
      else if (frame.to_allocate)
	FUNC21 (stack_pointer_rtx, stack_pointer_rtx,
				   FUNC0 (frame.to_allocate), style);

      for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
	if (FUNC19 (regno, false))
	  {
	    if (TARGET_64BIT)
	      FUNC1 (FUNC8 (FUNC15 (Pmode, regno)));
	    else
	      FUNC1 (FUNC9 (FUNC15 (Pmode, regno)));
	  }
      if (frame_pointer_needed)
	{
	  /* Leave results in shorter dependency chains on CPUs that are
	     able to grok it fast.  */
	  if (TARGET_USE_LEAVE)
	    FUNC1 (TARGET_64BIT ? FUNC7 () : FUNC6 ());
	  else if (TARGET_64BIT)
	    FUNC1 (FUNC8 (hard_frame_pointer_rtx));
	  else
	    FUNC1 (FUNC9 (hard_frame_pointer_rtx));
	}
    }

  if (cfun->machine->force_align_arg_pointer)
    {
      FUNC1 (FUNC5 (stack_pointer_rtx,
			     cfun->machine->force_align_arg_pointer,
			     FUNC0 (-4)));
    }

  /* Sibcall epilogues don't want a return instruction.  */
  if (style == 0)
    return;

  if (current_function_pops_args && current_function_args_size)
    {
      rtx popc = FUNC0 (current_function_pops_args);

      /* i386 can only pop 64K bytes.  If asked to pop more, pop
	 return address, do explicit add, and jump indirectly to the
	 caller.  */

      if (current_function_pops_args >= 65536)
	{
	  rtx ecx = FUNC15 (SImode, 2);

	  /* There is no "pascal" calling convention in 64bit ABI.  */
	  FUNC4 (!TARGET_64BIT);

	  FUNC1 (FUNC9 (ecx));
	  FUNC1 (FUNC5 (stack_pointer_rtx, stack_pointer_rtx, popc));
	  FUNC2 (FUNC10 (ecx));
	}
      else
	FUNC2 (FUNC12 (popc));
    }
  else
    FUNC2 (FUNC11 ());
}