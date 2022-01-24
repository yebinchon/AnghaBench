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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ reg_rtx; scalar_t__ in; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ COND_EXEC ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 size_t FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  PARAM_MAX_RELOAD_SEARCH_INSNS ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ PLUS ; 
#define  POST_DEC 133 
#define  POST_INC 132 
#define  POST_MODIFY 131 
 scalar_t__ FUNC16 (scalar_t__) ; 
#define  PRE_DEC 130 
#define  PRE_INC 129 
#define  PRE_MODIFY 128 
 unsigned int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  REG_EQUIV ; 
 scalar_t__ REG_INC ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  REG_UNUSED ; 
 scalar_t__ FUNC21 (size_t) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 int STACK_POINTER_REGNUM ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC25 (scalar_t__,int) ; 
 scalar_t__ FUNC26 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC27 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTRACT ; 
 scalar_t__* call_used_regs ; 
 scalar_t__ FUNC28 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ flag_float_store ; 
 scalar_t__ frame_pointer_rtx ; 
 int** hard_regno_nregs ; 
 int n_reloads ; 
 scalar_t__ FUNC29 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (scalar_t__,size_t) ; 
 scalar_t__ FUNC31 (int,int,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/ * reg_class_contents ; 
 scalar_t__* reg_equiv_memory_loc ; 
 scalar_t__ FUNC32 (scalar_t__,scalar_t__) ; 
 scalar_t__ reload_first_uid ; 
 TYPE_1__* rld ; 
 scalar_t__ FUNC33 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC34 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC35 (scalar_t__) ; 
 scalar_t__ stack_pointer_rtx ; 
 int FUNC36 (scalar_t__) ; 
 scalar_t__ FUNC37 (scalar_t__) ; 

rtx
FUNC38 (rtx goal, rtx insn, enum reg_class class, int other,
		short *reload_reg_p, int goalreg, enum machine_mode mode)
{
  rtx p = insn;
  rtx goaltry, valtry, value, where;
  rtx pat;
  int regno = -1;
  int valueno;
  int goal_mem = 0;
  int goal_const = 0;
  int goal_mem_addr_varies = 0;
  int need_stable_sp = 0;
  int nregs;
  int valuenregs;
  int num = 0;

  if (goal == 0)
    regno = goalreg;
  else if (FUNC20 (goal))
    regno = FUNC17 (goal);
  else if (FUNC11 (goal))
    {
      enum rtx_code code = FUNC5 (FUNC25 (goal, 0));
      if (FUNC12 (goal))
	return 0;
      if (flag_float_store && FUNC21 (FUNC6 (goal)))
	return 0;
      /* An address with side effects must be reexecuted.  */
      switch (code)
	{
	case POST_INC:
	case PRE_INC:
	case POST_DEC:
	case PRE_DEC:
	case POST_MODIFY:
	case PRE_MODIFY:
	  return 0;
	default:
	  break;
	}
      goal_mem = 1;
    }
  else if (FUNC4 (goal))
    goal_const = 1;
  else if (FUNC5 (goal) == PLUS
	   && FUNC25 (goal, 0) == stack_pointer_rtx
	   && FUNC4 (FUNC25 (goal, 1)))
    goal_const = need_stable_sp = 1;
  else if (FUNC5 (goal) == PLUS
	   && FUNC25 (goal, 0) == frame_pointer_rtx
	   && FUNC4 (FUNC25 (goal, 1)))
    goal_const = 1;
  else
    return 0;

  num = 0;
  /* Scan insns back from INSN, looking for one that copies
     a value into or out of GOAL.
     Stop and give up if we reach a label.  */

  while (1)
    {
      p = FUNC16 (p);
      num++;
      if (p == 0 || FUNC10 (p)
	  || num > FUNC14 (PARAM_MAX_RELOAD_SEARCH_INSNS))
	return 0;

      if (FUNC13 (p)
	  /* If we don't want spill regs ...  */
	  && (! (reload_reg_p != 0
		 && reload_reg_p != (short *) (HOST_WIDE_INT) 1)
	      /* ... then ignore insns introduced by reload; they aren't
		 useful and can cause results in reload_as_needed to be
		 different from what they were when calculating the need for
		 spills.  If we notice an input-reload insn here, we will
		 reject it below, but it might hide a usable equivalent.
		 That makes bad code.  It may even fail: perhaps no reg was
		 spilled for this insn because it was assumed we would find
		 that equivalent.  */
	      || FUNC9 (p) < reload_first_uid))
	{
	  rtx tem;
	  pat = FUNC35 (p);

	  /* First check for something that sets some reg equal to GOAL.  */
	  if (pat != 0
	      && ((regno >= 0
		   && FUNC36 (FUNC23 (pat)) == regno
		   && (valueno = FUNC36 (valtry = FUNC22 (pat))) >= 0)
		  ||
		  (regno >= 0
		   && FUNC36 (FUNC22 (pat)) == regno
		   && (valueno = FUNC36 (valtry = FUNC23 (pat))) >= 0)
		  ||
		  (goal_const && FUNC33 (FUNC23 (pat), goal)
		   /* When looking for stack pointer + const,
		      make sure we don't use a stack adjust.  */
		   && !FUNC32 (FUNC22 (pat), goal)
		   && (valueno = FUNC36 (valtry = FUNC22 (pat))) >= 0)
		  || (goal_mem
		      && (valueno = FUNC36 (valtry = FUNC22 (pat))) >= 0
		      && FUNC34 (goal, FUNC23 (pat)))
		  || (goal_mem
		      && (valueno = FUNC36 (valtry = FUNC23 (pat))) >= 0
		      && FUNC34 (goal, FUNC22 (pat)))
		  /* If we are looking for a constant,
		     and something equivalent to that constant was copied
		     into a reg, we can use that reg.  */
		  || (goal_const && FUNC18 (p) != 0
		      && (tem = FUNC28 (p, REG_EQUIV, NULL_RTX))
		      && ((FUNC33 (FUNC25 (tem, 0), goal)
			   && (valueno
			       = FUNC36 (valtry = FUNC22 (pat))) >= 0)
			  || (FUNC20 (FUNC22 (pat))
			      && FUNC5 (FUNC25 (tem, 0)) == CONST_DOUBLE
			      && FUNC21 (FUNC6 (FUNC25 (tem, 0)))
			      && FUNC5 (goal) == CONST_INT
			      && 0 != (goaltry
				       = FUNC29 (FUNC25 (tem, 0), 0, 0,
							  VOIDmode))
			      && FUNC33 (goal, goaltry)
			      && (valtry
				  = FUNC29 (FUNC22 (pat), 0, 0,
						     VOIDmode))
			      && (valueno = FUNC36 (valtry)) >= 0)))
		  || (goal_const && (tem = FUNC28 (p, REG_EQUIV,
							  NULL_RTX))
		      && FUNC20 (FUNC22 (pat))
		      && FUNC5 (FUNC25 (tem, 0)) == CONST_DOUBLE
		      && FUNC21 (FUNC6 (FUNC25 (tem, 0)))
		      && FUNC5 (goal) == CONST_INT
		      && 0 != (goaltry = FUNC29 (FUNC25 (tem, 0), 1, 0,
							  VOIDmode))
		      && FUNC33 (goal, goaltry)
		      && (valtry
			  = FUNC29 (FUNC22 (pat), 1, 0, VOIDmode))
		      && (valueno = FUNC36 (valtry)) >= 0)))
	    {
	      if (other >= 0)
		{
		  if (valueno != other)
		    continue;
		}
	      else if ((unsigned) valueno >= FIRST_PSEUDO_REGISTER)
		continue;
	      else
		{
		  int i;

		  for (i = hard_regno_nregs[valueno][mode] - 1; i >= 0; i--)
		    if (! FUNC24 (reg_class_contents[(int) class],
					     valueno + i))
		      break;
		  if (i >= 0)
		    continue;
		}
	      value = valtry;
	      where = p;
	      break;
	    }
	}
    }

  /* We found a previous insn copying GOAL into a suitable other reg VALUE
     (or copying VALUE into GOAL, if GOAL is also a register).
     Now verify that VALUE is really valid.  */

  /* VALUENO is the register number of VALUE; a hard register.  */

  /* Don't try to re-use something that is killed in this insn.  We want
     to be able to trust REG_UNUSED notes.  */
  if (FUNC18 (where) != 0 && FUNC28 (where, REG_UNUSED, value))
    return 0;

  /* If we propose to get the value from the stack pointer or if GOAL is
     a MEM based on the stack pointer, we need a stable SP.  */
  if (valueno == STACK_POINTER_REGNUM || regno == STACK_POINTER_REGNUM
      || (goal_mem && FUNC32 (stack_pointer_rtx,
							  goal)))
    need_stable_sp = 1;

  /* Reject VALUE if the copy-insn moved the wrong sort of datum.  */
  if (FUNC6 (value) != mode)
    return 0;

  /* Reject VALUE if it was loaded from GOAL
     and is also a register that appears in the address of GOAL.  */

  if (goal_mem && value == FUNC22 (FUNC35 (where))
      && FUNC31 (valueno,
				       (valueno
					+ hard_regno_nregs[valueno][mode]),
				       goal, (rtx*) 0))
    return 0;

  /* Reject registers that overlap GOAL.  */

  if (regno >= 0 && regno < FIRST_PSEUDO_REGISTER)
    nregs = hard_regno_nregs[regno][mode];
  else
    nregs = 1;
  valuenregs = hard_regno_nregs[valueno][mode];

  if (!goal_mem && !goal_const
      && regno + nregs > valueno && regno < valueno + valuenregs)
    return 0;

  /* Reject VALUE if it is one of the regs reserved for reloads.
     Reload1 knows how to reuse them anyway, and it would get
     confused if we allocated one without its knowledge.
     (Now that insns introduced by reload are ignored above,
     this case shouldn't happen, but I'm not positive.)  */

  if (reload_reg_p != 0 && reload_reg_p != (short *) (HOST_WIDE_INT) 1)
    {
      int i;
      for (i = 0; i < valuenregs; ++i)
	if (reload_reg_p[valueno + i] >= 0)
	  return 0;
    }

  /* Reject VALUE if it is a register being used for an input reload
     even if it is not one of those reserved.  */

  if (reload_reg_p != 0)
    {
      int i;
      for (i = 0; i < n_reloads; i++)
	if (rld[i].reg_rtx != 0 && rld[i].in)
	  {
	    int regno1 = FUNC17 (rld[i].reg_rtx);
	    int nregs1 = hard_regno_nregs[regno1]
					 [FUNC6 (rld[i].reg_rtx)];
	    if (regno1 < valueno + valuenregs
		&& regno1 + nregs1 > valueno)
	      return 0;
	  }
    }

  if (goal_mem)
    /* We must treat frame pointer as varying here,
       since it can vary--in a nonlocal goto as generated by expand_goto.  */
    goal_mem_addr_varies = !FUNC3 (FUNC25 (goal, 0));

  /* Now verify that the values of GOAL and VALUE remain unaltered
     until INSN is reached.  */

  p = insn;
  while (1)
    {
      p = FUNC16 (p);
      if (p == where)
	return value;

      /* Don't trust the conversion past a function call
	 if either of the two is in a call-clobbered register, or memory.  */
      if (FUNC1 (p))
	{
	  int i;

	  if (goal_mem || need_stable_sp)
	    return 0;

	  if (regno >= 0 && regno < FIRST_PSEUDO_REGISTER)
	    for (i = 0; i < nregs; ++i)
	      if (call_used_regs[regno + i]
		  || FUNC7 (regno + i, mode))
		return 0;

	  if (valueno >= 0 && valueno < FIRST_PSEUDO_REGISTER)
	    for (i = 0; i < valuenregs; ++i)
	      if (call_used_regs[valueno + i]
		  || FUNC7 (valueno + i, mode))
		return 0;
	}

      if (FUNC8 (p))
	{
	  pat = FUNC15 (p);

	  /* Watch out for unspec_volatile, and volatile asms.  */
	  if (FUNC37 (pat))
	    return 0;

	  /* If this insn P stores in either GOAL or VALUE, return 0.
	     If GOAL is a memory ref and this insn writes memory, return 0.
	     If GOAL is a memory ref and its address is not constant,
	     and this insn P changes a register used in GOAL, return 0.  */

	  if (FUNC5 (pat) == COND_EXEC)
	    pat = FUNC2 (pat);
	  if (FUNC5 (pat) == SET || FUNC5 (pat) == CLOBBER)
	    {
	      rtx dest = FUNC22 (pat);
	      while (FUNC5 (dest) == SUBREG
		     || FUNC5 (dest) == ZERO_EXTRACT
		     || FUNC5 (dest) == STRICT_LOW_PART)
		dest = FUNC25 (dest, 0);
	      if (FUNC20 (dest))
		{
		  int xregno = FUNC17 (dest);
		  int xnregs;
		  if (FUNC17 (dest) < FIRST_PSEUDO_REGISTER)
		    xnregs = hard_regno_nregs[xregno][FUNC6 (dest)];
		  else
		    xnregs = 1;
		  if (xregno < regno + nregs && xregno + xnregs > regno)
		    return 0;
		  if (xregno < valueno + valuenregs
		      && xregno + xnregs > valueno)
		    return 0;
		  if (goal_mem_addr_varies
		      && FUNC32 (dest, goal))
		    return 0;
		  if (xregno == STACK_POINTER_REGNUM && need_stable_sp)
		    return 0;
		}
	      else if (goal_mem && FUNC11 (dest)
		       && ! FUNC30 (dest, FUNC6 (dest)))
		return 0;
	      else if (FUNC11 (dest) && regno >= FIRST_PSEUDO_REGISTER
		       && reg_equiv_memory_loc[regno] != 0)
		return 0;
	      else if (need_stable_sp && FUNC30 (dest, FUNC6 (dest)))
		return 0;
	    }
	  else if (FUNC5 (pat) == PARALLEL)
	    {
	      int i;
	      for (i = FUNC27 (pat, 0) - 1; i >= 0; i--)
		{
		  rtx v1 = FUNC26 (pat, 0, i);
		  if (FUNC5 (v1) == COND_EXEC)
		    v1 = FUNC2 (v1);
		  if (FUNC5 (v1) == SET || FUNC5 (v1) == CLOBBER)
		    {
		      rtx dest = FUNC22 (v1);
		      while (FUNC5 (dest) == SUBREG
			     || FUNC5 (dest) == ZERO_EXTRACT
			     || FUNC5 (dest) == STRICT_LOW_PART)
			dest = FUNC25 (dest, 0);
		      if (FUNC20 (dest))
			{
			  int xregno = FUNC17 (dest);
			  int xnregs;
			  if (FUNC17 (dest) < FIRST_PSEUDO_REGISTER)
			    xnregs = hard_regno_nregs[xregno][FUNC6 (dest)];
			  else
			    xnregs = 1;
			  if (xregno < regno + nregs
			      && xregno + xnregs > regno)
			    return 0;
			  if (xregno < valueno + valuenregs
			      && xregno + xnregs > valueno)
			    return 0;
			  if (goal_mem_addr_varies
			      && FUNC32 (dest,
								     goal))
			    return 0;
			  if (xregno == STACK_POINTER_REGNUM && need_stable_sp)
			    return 0;
			}
		      else if (goal_mem && FUNC11 (dest)
			       && ! FUNC30 (dest, FUNC6 (dest)))
			return 0;
		      else if (FUNC11 (dest) && regno >= FIRST_PSEUDO_REGISTER
			       && reg_equiv_memory_loc[regno] != 0)
			return 0;
		      else if (need_stable_sp
			       && FUNC30 (dest, FUNC6 (dest)))
			return 0;
		    }
		}
	    }

	  if (FUNC1 (p) && FUNC0 (p))
	    {
	      rtx link;

	      for (link = FUNC0 (p); FUNC25 (link, 1) != 0;
		   link = FUNC25 (link, 1))
		{
		  pat = FUNC25 (link, 0);
		  if (FUNC5 (pat) == CLOBBER)
		    {
		      rtx dest = FUNC22 (pat);

		      if (FUNC20 (dest))
			{
			  int xregno = FUNC17 (dest);
			  int xnregs
			    = hard_regno_nregs[xregno][FUNC6 (dest)];

			  if (xregno < regno + nregs
			      && xregno + xnregs > regno)
			    return 0;
			  else if (xregno < valueno + valuenregs
				   && xregno + xnregs > valueno)
			    return 0;
			  else if (goal_mem_addr_varies
				   && FUNC32 (dest,
								     goal))
			    return 0;
			}

		      else if (goal_mem && FUNC11 (dest)
			       && ! FUNC30 (dest, FUNC6 (dest)))
			return 0;
		      else if (need_stable_sp
			       && FUNC30 (dest, FUNC6 (dest)))
			return 0;
		    }
		}
	    }

#ifdef AUTO_INC_DEC
	  /* If this insn auto-increments or auto-decrements
	     either regno or valueno, return 0 now.
	     If GOAL is a memory ref and its address is not constant,
	     and this insn P increments a register used in GOAL, return 0.  */
	  {
	    rtx link;

	    for (link = REG_NOTES (p); link; link = XEXP (link, 1))
	      if (REG_NOTE_KIND (link) == REG_INC
		  && REG_P (XEXP (link, 0)))
		{
		  int incno = REGNO (XEXP (link, 0));
		  if (incno < regno + nregs && incno >= regno)
		    return 0;
		  if (incno < valueno + valuenregs && incno >= valueno)
		    return 0;
		  if (goal_mem_addr_varies
		      && reg_overlap_mentioned_for_reload_p (XEXP (link, 0),
							     goal))
		    return 0;
		}
	  }
#endif
	}
    }
}