#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * rtx ;
struct TYPE_3__ {int saved_args; int frame; int outgoing_args; int saved_regs; } ;
typedef  TYPE_1__ arm_stack_offsets ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_EH_STACKADJ_REGNUM ; 
#define  ARM_FT_EXCEPTION 131 
#define  ARM_FT_FIQ 130 
#define  ARM_FT_INTERWORKED 129 
#define  ARM_FT_ISR 128 
 scalar_t__ ARM_FT_NORMAL ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FALSE ; 
 int FIRST_FPA_REGNUM ; 
 int FIRST_IWMMXT_REGNUM ; 
 int FIRST_VFP_REGNUM ; 
 scalar_t__ FPUTYPE_FPA_EMU2 ; 
 int /*<<< orphan*/  FP_REGNUM ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int IP_REGNUM ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int LAST_ARM_REGNUM ; 
 int LAST_FPA_REGNUM ; 
 int LAST_IWMMXT_REGNUM ; 
 int LAST_VFP_REGNUM ; 
 int LR_REGNUM ; 
 scalar_t__ NEED_PLT_RELOC ; 
 int PC_REGNUM ; 
 int /*<<< orphan*/  Pmode ; 
 int SP_REGNUM ; 
 scalar_t__ TARGET_ABORT_NORETURN ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 scalar_t__ TARGET_IWMMXT ; 
 scalar_t__ TARGET_VFP ; 
 int /*<<< orphan*/  arm_arch4t ; 
 int /*<<< orphan*/  arm_arch5 ; 
 unsigned long FUNC5 () ; 
 unsigned long FUNC6 () ; 
 scalar_t__ arm_fpu_arch ; 
 TYPE_1__* FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/ * asm_out_file ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (unsigned long) ; 
 scalar_t__* call_used_regs ; 
 scalar_t__ current_function_calls_alloca ; 
 scalar_t__ current_function_calls_eh_return ; 
 int current_function_pretend_args_size ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int,unsigned long) ; 
 scalar_t__* regs_ever_live ; 
 scalar_t__ return_used_this_function ; 
 int /*<<< orphan*/ * stack_pointer_rtx ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const char *
FUNC19 (rtx sibling)
{
  int reg;
  unsigned long saved_regs_mask;
  unsigned long func_type;
  /* Floats_offset is the offset from the "virtual" frame.  In an APCS
     frame that is $fp + 4 for a non-variadic function.  */
  int floats_offset = 0;
  rtx operands[3];
  FILE * f = asm_out_file;
  unsigned int lrm_count = 0;
  int really_return = (sibling == NULL);
  int start_reg;
  arm_stack_offsets *offsets;

  /* If we have already generated the return instruction
     then it is futile to generate anything else.  */
  if (FUNC18 (FALSE, sibling) && return_used_this_function)
    return "";

  func_type = FUNC6 ();

  if (FUNC3 (func_type))
    /* Naked functions don't have epilogues.  */
    return "";

  if (FUNC4 (func_type) && TARGET_ABORT_NORETURN)
    {
      rtx op;

      /* A volatile function should never return.  Call abort.  */
      op = FUNC14 (Pmode, NEED_PLT_RELOC ? "abort(PLT)" : "abort");
      FUNC11 (op);
      FUNC16 ("bl\t%a0", &op);

      return "";
    }

  /* If we are throwing an exception, then we really must be doing a
     return, so we can't tail-call.  */
  FUNC13 (!current_function_calls_eh_return || really_return);

  offsets = FUNC7 ();
  saved_regs_mask = FUNC5 ();

  if (TARGET_IWMMXT)
    lrm_count = FUNC12 (saved_regs_mask);

  floats_offset = offsets->saved_args;
  /* Compute how far away the floats will be.  */
  for (reg = 0; reg <= LAST_ARM_REGNUM; reg++)
    if (saved_regs_mask & (1 << reg))
      floats_offset += 4;

  if (frame_pointer_needed)
    {
      /* This variable is for the Virtual Frame Pointer, not VFP regs.  */
      int vfp_offset = offsets->frame;

      if (arm_fpu_arch == FPUTYPE_FPA_EMU2)
	{
	  for (reg = LAST_FPA_REGNUM; reg >= FIRST_FPA_REGNUM; reg--)
	    if (regs_ever_live[reg] && !call_used_regs[reg])
	      {
		floats_offset += 12;
		FUNC10 (f, "\tldfe\t%r, [%r, #-%d]\n",
			     reg, FP_REGNUM, floats_offset - vfp_offset);
	      }
	}
      else
	{
	  start_reg = LAST_FPA_REGNUM;

	  for (reg = LAST_FPA_REGNUM; reg >= FIRST_FPA_REGNUM; reg--)
	    {
	      if (regs_ever_live[reg] && !call_used_regs[reg])
		{
		  floats_offset += 12;

		  /* We can't unstack more than four registers at once.  */
		  if (start_reg - reg == 3)
		    {
		      FUNC10 (f, "\tlfm\t%r, 4, [%r, #-%d]\n",
			           reg, FP_REGNUM, floats_offset - vfp_offset);
		      start_reg = reg - 1;
		    }
		}
	      else
		{
		  if (reg != start_reg)
		    FUNC10 (f, "\tlfm\t%r, %d, [%r, #-%d]\n",
				 reg + 1, start_reg - reg,
				 FP_REGNUM, floats_offset - vfp_offset);
		  start_reg = reg - 1;
		}
	    }

	  /* Just in case the last register checked also needs unstacking.  */
	  if (reg != start_reg)
	    FUNC10 (f, "\tlfm\t%r, %d, [%r, #-%d]\n",
			 reg + 1, start_reg - reg,
			 FP_REGNUM, floats_offset - vfp_offset);
	}

      if (TARGET_HARD_FLOAT && TARGET_VFP)
	{
	  int saved_size;

	  /* The fldmx insn does not have base+offset addressing modes,
	     so we use IP to hold the address.  */
	  saved_size = FUNC8 ();

	  if (saved_size > 0)
	    {
	      floats_offset += saved_size;
	      FUNC10 (f, "\tsub\t%r, %r, #%d\n", IP_REGNUM,
			   FP_REGNUM, floats_offset - vfp_offset);
	    }
	  start_reg = FIRST_VFP_REGNUM;
	  for (reg = FIRST_VFP_REGNUM; reg < LAST_VFP_REGNUM; reg += 2)
	    {
	      if ((!regs_ever_live[reg] || call_used_regs[reg])
		  && (!regs_ever_live[reg + 1] || call_used_regs[reg + 1]))
		{
		  if (start_reg != reg)
		    FUNC9 (f, IP_REGNUM,
				      (start_reg - FIRST_VFP_REGNUM) / 2,
				      (reg - start_reg) / 2);
		  start_reg = reg + 2;
		}
	    }
	  if (start_reg != reg)
	    FUNC9 (f, IP_REGNUM,
			      (start_reg - FIRST_VFP_REGNUM) / 2,
			      (reg - start_reg) / 2);
	}

      if (TARGET_IWMMXT)
	{
	  /* The frame pointer is guaranteed to be non-double-word aligned.
	     This is because it is set to (old_stack_pointer - 4) and the
	     old_stack_pointer was double word aligned.  Thus the offset to
	     the iWMMXt registers to be loaded must also be non-double-word
	     sized, so that the resultant address *is* double-word aligned.
	     We can ignore floats_offset since that was already included in
	     the live_regs_mask.  */
	  lrm_count += (lrm_count % 2 ? 2 : 1);

	  for (reg = LAST_IWMMXT_REGNUM; reg >= FIRST_IWMMXT_REGNUM; reg--)
	    if (regs_ever_live[reg] && !call_used_regs[reg])
	      {
		FUNC10 (f, "\twldrd\t%r, [%r, #-%d]\n",
			     reg, FP_REGNUM, lrm_count * 4);
		lrm_count += 2;
	      }
	}

      /* saved_regs_mask should contain the IP, which at the time of stack
	 frame generation actually contains the old stack pointer.  So a
	 quick way to unwind the stack is just pop the IP register directly
	 into the stack pointer.  */
      FUNC13 (saved_regs_mask & (1 << IP_REGNUM));
      saved_regs_mask &= ~ (1 << IP_REGNUM);
      saved_regs_mask |=   (1 << SP_REGNUM);

      /* There are two registers left in saved_regs_mask - LR and PC.  We
	 only need to restore the LR register (the return address), but to
	 save time we can load it directly into the PC, unless we need a
	 special function exit sequence, or we are not really returning.  */
      if (really_return
	  && FUNC0 (func_type) == ARM_FT_NORMAL
	  && !current_function_calls_eh_return)
	/* Delete the LR from the register mask, so that the LR on
	   the stack is loaded into the PC in the register mask.  */
	saved_regs_mask &= ~ (1 << LR_REGNUM);
      else
	saved_regs_mask &= ~ (1 << PC_REGNUM);

      /* We must use SP as the base register, because SP is one of the
         registers being restored.  If an interrupt or page fault
         happens in the ldm instruction, the SP might or might not
         have been restored.  That would be bad, as then SP will no
         longer indicate the safe area of stack, and we can get stack
         corruption.  Using SP as the base register means that it will
         be reset correctly to the original value, should an interrupt
         occur.  If the stack pointer already points at the right
         place, then omit the subtraction.  */
      if (offsets->outgoing_args != (1 + (int) FUNC12 (saved_regs_mask))
	  || current_function_calls_alloca)
	FUNC10 (f, "\tsub\t%r, %r, #%d\n", SP_REGNUM, FP_REGNUM,
		     4 * FUNC12 (saved_regs_mask));
      FUNC17 (f, "ldmfd\t%r", SP_REGNUM, saved_regs_mask);

      if (FUNC2 (func_type))
	/* Interrupt handlers will have pushed the
	   IP onto the stack, so restore it now.  */
	FUNC17 (f, "ldmfd\t%r!", SP_REGNUM, 1 << IP_REGNUM);
    }
  else
    {
      /* Restore stack pointer if necessary.  */
      if (offsets->outgoing_args != offsets->saved_regs)
	{
	  operands[0] = operands[1] = stack_pointer_rtx;
	  operands[2] = FUNC1 (offsets->outgoing_args - offsets->saved_regs);
	  FUNC15 (operands);
	}

      if (arm_fpu_arch == FPUTYPE_FPA_EMU2)
	{
	  for (reg = FIRST_FPA_REGNUM; reg <= LAST_FPA_REGNUM; reg++)
	    if (regs_ever_live[reg] && !call_used_regs[reg])
	      FUNC10 (f, "\tldfe\t%r, [%r], #12\n",
			   reg, SP_REGNUM);
	}
      else
	{
	  start_reg = FIRST_FPA_REGNUM;

	  for (reg = FIRST_FPA_REGNUM; reg <= LAST_FPA_REGNUM; reg++)
	    {
	      if (regs_ever_live[reg] && !call_used_regs[reg])
		{
		  if (reg - start_reg == 3)
		    {
		      FUNC10 (f, "\tlfmfd\t%r, 4, [%r]!\n",
				   start_reg, SP_REGNUM);
		      start_reg = reg + 1;
		    }
		}
	      else
		{
		  if (reg != start_reg)
		    FUNC10 (f, "\tlfmfd\t%r, %d, [%r]!\n",
				 start_reg, reg - start_reg,
				 SP_REGNUM);

		  start_reg = reg + 1;
		}
	    }

	  /* Just in case the last register checked also needs unstacking.  */
	  if (reg != start_reg)
	    FUNC10 (f, "\tlfmfd\t%r, %d, [%r]!\n",
			 start_reg, reg - start_reg, SP_REGNUM);
	}

      if (TARGET_HARD_FLOAT && TARGET_VFP)
	{
	  start_reg = FIRST_VFP_REGNUM;
	  for (reg = FIRST_VFP_REGNUM; reg < LAST_VFP_REGNUM; reg += 2)
	    {
	      if ((!regs_ever_live[reg] || call_used_regs[reg])
		  && (!regs_ever_live[reg + 1] || call_used_regs[reg + 1]))
		{
		  if (start_reg != reg)
		    FUNC9 (f, SP_REGNUM,
				      (start_reg - FIRST_VFP_REGNUM) / 2,
				      (reg - start_reg) / 2);
		  start_reg = reg + 2;
		}
	    }
	  if (start_reg != reg)
	    FUNC9 (f, SP_REGNUM,
			      (start_reg - FIRST_VFP_REGNUM) / 2,
			      (reg - start_reg) / 2);
	}
      if (TARGET_IWMMXT)
	for (reg = FIRST_IWMMXT_REGNUM; reg <= LAST_IWMMXT_REGNUM; reg++)
	  if (regs_ever_live[reg] && !call_used_regs[reg])
	    FUNC10 (f, "\twldrd\t%r, [%r], #8\n", reg, SP_REGNUM);

      /* If we can, restore the LR into the PC.  */
      if (FUNC0 (func_type) == ARM_FT_NORMAL
	  && really_return
	  && current_function_pretend_args_size == 0
	  && saved_regs_mask & (1 << LR_REGNUM)
	  && !current_function_calls_eh_return)
	{
	  saved_regs_mask &= ~ (1 << LR_REGNUM);
	  saved_regs_mask |=   (1 << PC_REGNUM);
	}

      /* Load the registers off the stack.  If we only have one register
	 to load use the LDR instruction - it is faster.  */
      if (saved_regs_mask == (1 << LR_REGNUM))
	{
	  FUNC10 (f, "\tldr\t%r, [%r], #4\n", LR_REGNUM, SP_REGNUM);
	}
      else if (saved_regs_mask)
	{
	  if (saved_regs_mask & (1 << SP_REGNUM))
	    /* Note - write back to the stack register is not enabled
	       (i.e. "ldmfd sp!...").  We know that the stack pointer is
	       in the list of registers and if we add writeback the
	       instruction becomes UNPREDICTABLE.  */
	    FUNC17 (f, "ldmfd\t%r", SP_REGNUM, saved_regs_mask);
	  else
	    FUNC17 (f, "ldmfd\t%r!", SP_REGNUM, saved_regs_mask);
	}

      if (current_function_pretend_args_size)
	{
	  /* Unwind the pre-pushed regs.  */
	  operands[0] = operands[1] = stack_pointer_rtx;
	  operands[2] = FUNC1 (current_function_pretend_args_size);
	  FUNC15 (operands);
	}
    }

  /* We may have already restored PC directly from the stack.  */
  if (!really_return || saved_regs_mask & (1 << PC_REGNUM))
    return "";

  /* Stack adjustment for exception handler.  */
  if (current_function_calls_eh_return)
    FUNC10 (f, "\tadd\t%r, %r, %r\n", SP_REGNUM, SP_REGNUM,
		 ARM_EH_STACKADJ_REGNUM);

  /* Generate the return instruction.  */
  switch ((int) FUNC0 (func_type))
    {
    case ARM_FT_ISR:
    case ARM_FT_FIQ:
      FUNC10 (f, "\tsubs\t%r, %r, #4\n", PC_REGNUM, LR_REGNUM);
      break;

    case ARM_FT_EXCEPTION:
      FUNC10 (f, "\tmovs\t%r, %r\n", PC_REGNUM, LR_REGNUM);
      break;

    case ARM_FT_INTERWORKED:
      FUNC10 (f, "\tbx\t%r\n", LR_REGNUM);
      break;

    default:
      if (arm_arch5 || arm_arch4t)
	FUNC10 (f, "\tbx\t%r\n", LR_REGNUM);
      else
	FUNC10 (f, "\tmov\t%r, %r\n", PC_REGNUM, LR_REGNUM);
      break;
    }

  return "";
}