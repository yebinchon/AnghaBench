#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {TYPE_1__* rtl; } ;
struct TYPE_8__ {TYPE_2__ il; } ;
struct TYPE_7__ {scalar_t__ out; } ;
struct TYPE_5__ {int /*<<< orphan*/  global_live_at_end; } ;

/* Variables and functions */
 TYPE_4__* ENTRY_BLOCK_PTR ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int NO_REGS ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  REG_UNUSED ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ UNITS_PER_WORD ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * fixed_regs ; 
 scalar_t__ FUNC14 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,unsigned int,scalar_t__) ; 
 unsigned int** hard_regno_nregs ; 
 scalar_t__ hard_regs_live_known ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,unsigned int,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/ * reg_class_contents ; 
 TYPE_3__* rld ; 
 scalar_t__ FUNC17 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  this_insn ; 

__attribute__((used)) static rtx
FUNC18 (rtx real_in, rtx real_out, rtx *inloc, rtx *outloc,
		   enum machine_mode inmode, enum machine_mode outmode,
		   enum reg_class class, int for_real, int earlyclobber)
{
  rtx in = real_in;
  rtx out = real_out;
  int in_offset = 0;
  int out_offset = 0;
  rtx value = 0;

  /* If operands exceed a word, we can't use either of them
     unless they have the same size.  */
  if (FUNC2 (outmode) != FUNC2 (inmode)
      && (FUNC2 (outmode) > UNITS_PER_WORD
	  || FUNC2 (inmode) > UNITS_PER_WORD))
    return 0;

  /* Note that {in,out}_offset are needed only when 'in' or 'out'
     respectively refers to a hard register.  */

  /* Find the inside of any subregs.  */
  while (FUNC0 (out) == SUBREG)
    {
      if (FUNC8 (FUNC10 (out))
	  && FUNC7 (FUNC10 (out)) < FIRST_PSEUDO_REGISTER)
	out_offset += FUNC17 (FUNC7 (FUNC10 (out)),
					   FUNC1 (FUNC10 (out)),
					   FUNC9 (out),
					   FUNC1 (out));
      out = FUNC10 (out);
    }
  while (FUNC0 (in) == SUBREG)
    {
      if (FUNC8 (FUNC10 (in))
	  && FUNC7 (FUNC10 (in)) < FIRST_PSEUDO_REGISTER)
	in_offset += FUNC17 (FUNC7 (FUNC10 (in)),
					  FUNC1 (FUNC10 (in)),
					  FUNC9 (in),
					  FUNC1 (in));
      in = FUNC10 (in);
    }

  /* Narrow down the reg class, the same way push_reload will;
     otherwise we might find a dummy now, but push_reload won't.  */
  {
    enum reg_class preferred_class = FUNC6 (in, class);
    if (preferred_class != NO_REGS)
      class = preferred_class;
  }

  /* See if OUT will do.  */
  if (FUNC8 (out)
      && FUNC7 (out) < FIRST_PSEUDO_REGISTER)
    {
      unsigned int regno = FUNC7 (out) + out_offset;
      unsigned int nwords = hard_regno_nregs[regno][outmode];
      rtx saved_rtx;

      /* When we consider whether the insn uses OUT,
	 ignore references within IN.  They don't prevent us
	 from copying IN into OUT, because those refs would
	 move into the insn that reloads IN.

	 However, we only ignore IN in its role as this reload.
	 If the insn uses IN elsewhere and it contains OUT,
	 that counts.  We can't be sure it's the "same" operand
	 so it might not go through this reload.  */
      saved_rtx = *inloc;
      *inloc = const0_rtx;

      if (regno < FIRST_PSEUDO_REGISTER
	  && FUNC3 (regno, outmode)
	  && ! FUNC16 (regno, regno + nwords,
					     FUNC5 (this_insn), outloc))
	{
	  unsigned int i;

	  for (i = 0; i < nwords; i++)
	    if (! FUNC11 (reg_class_contents[(int) class],
				     regno + i))
	      break;

	  if (i == nwords)
	    {
	      if (FUNC8 (real_out))
		value = real_out;
	      else
		value = FUNC14 (outmode, regno);
	    }
	}

      *inloc = saved_rtx;
    }

  /* Consider using IN if OUT was not acceptable
     or if OUT dies in this insn (like the quotient in a divmod insn).
     We can't use IN unless it is dies in this insn,
     which means we must know accurately which hard regs are live.
     Also, the result can't go in IN if IN is used within OUT,
     or if OUT is an earlyclobber and IN appears elsewhere in the insn.  */
  if (hard_regs_live_known
      && FUNC8 (in)
      && FUNC7 (in) < FIRST_PSEUDO_REGISTER
      && (value == 0
	  || FUNC13 (this_insn, REG_UNUSED, real_out))
      && FUNC13 (this_insn, REG_DEAD, real_in)
      && !fixed_regs[FUNC7 (in)]
      && FUNC3 (FUNC7 (in),
			     /* The only case where out and real_out might
				have different modes is where real_out
				is a subreg, and in that case, out
				has a real mode.  */
			     (FUNC1 (out) != VOIDmode
			      ? FUNC1 (out) : outmode))
        /* But only do all this if we can be sure, that this input
           operand doesn't correspond with an uninitialized pseudoreg.
           global can assign some hardreg to it, which is the same as
	   a different pseudo also currently live (as it can ignore the
	   conflict).  So we never must introduce writes to such hardregs,
	   as they would clobber the other live pseudo using the same.
	   See also PR20973.  */
      && (FUNC4 (in) < FIRST_PSEUDO_REGISTER
          || ! FUNC12 (ENTRY_BLOCK_PTR->il.rtl->global_live_at_end,
			     FUNC4 (in))))
    {
      unsigned int regno = FUNC7 (in) + in_offset;
      unsigned int nwords = hard_regno_nregs[regno][inmode];

      if (! FUNC16 (regno, regno + nwords, out, (rtx*) 0)
	  && ! FUNC15 (regno, regno + nwords,
				    FUNC5 (this_insn))
	  && (! earlyclobber
	      || ! FUNC16 (regno, regno + nwords,
						 FUNC5 (this_insn), inloc)))
	{
	  unsigned int i;

	  for (i = 0; i < nwords; i++)
	    if (! FUNC11 (reg_class_contents[(int) class],
				     regno + i))
	      break;

	  if (i == nwords)
	    {
	      /* If we were going to use OUT as the reload reg
		 and changed our mind, it means OUT is a dummy that
		 dies here.  So don't bother copying value to it.  */
	      if (for_real >= 0 && value == real_out)
		rld[for_real].out = 0;
	      if (FUNC8 (real_in))
		value = real_in;
	      else
		value = FUNC14 (inmode, regno);
	    }
	}
    }

  return value;
}