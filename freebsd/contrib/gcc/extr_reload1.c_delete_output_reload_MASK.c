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
struct TYPE_2__ {scalar_t__ in; scalar_t__ in_reg; scalar_t__ out; scalar_t__ out_reg; scalar_t__ reg_rtx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 size_t FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (size_t) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 int FUNC14 (size_t) ; 
 int FUNC15 (size_t) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ USE ; 
 scalar_t__ FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (size_t,int) ; 
 int FUNC20 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int** hard_regno_nregs ; 
 int n_reloads ; 
 scalar_t__* reg_equiv_alt_mem_list ; 
 scalar_t__* reg_equiv_memory_loc ; 
 scalar_t__ FUNC26 (scalar_t__,scalar_t__) ; 
 size_t* reg_renumber ; 
 scalar_t__* reload_inherited ; 
 scalar_t__* reload_override_in ; 
 TYPE_1__* rld ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 scalar_t__* spill_reg_store ; 
 scalar_t__* spill_reg_stored_to ; 

__attribute__((used)) static void
FUNC29 (rtx insn, int j, int last_reload_reg)
{
  rtx output_reload_insn = spill_reg_store[last_reload_reg];
  rtx reg = spill_reg_stored_to[last_reload_reg];
  int k;
  int n_occurrences;
  int n_inherited = 0;
  rtx i1;
  rtx substed;

  /* It is possible that this reload has been only used to set another reload
     we eliminated earlier and thus deleted this instruction too.  */
  if (FUNC3 (output_reload_insn))
    return;

  /* Get the raw pseudo-register referred to.  */

  while (FUNC1 (reg) == SUBREG)
    reg = FUNC17 (reg);
  substed = reg_equiv_memory_loc[FUNC12 (reg)];

  /* This is unsafe if the operand occurs more often in the current
     insn than it is inherited.  */
  for (k = n_reloads - 1; k >= 0; k--)
    {
      rtx reg2 = rld[k].in;
      if (! reg2)
	continue;
      if (FUNC6 (reg2) || reload_override_in[k])
	reg2 = rld[k].in_reg;
#ifdef AUTO_INC_DEC
      if (rld[k].out && ! rld[k].out_reg)
	reg2 = XEXP (rld[k].in_reg, 0);
#endif
      while (FUNC1 (reg2) == SUBREG)
	reg2 = FUNC17 (reg2);
      if (FUNC27 (reg2, reg))
	{
	  if (reload_inherited[k] || reload_override_in[k] || k == j)
	    {
	      n_inherited++;
	      reg2 = rld[k].out_reg;
	      if (! reg2)
		continue;
	      while (FUNC1 (reg2) == SUBREG)
		reg2 = FUNC18 (reg2, 0);
	      if (FUNC27 (reg2, reg))
		n_inherited++;
	    }
	  else
	    return;
	}
    }
  n_occurrences = FUNC20 (FUNC10 (insn), reg, 0);
  if (substed)
    n_occurrences += FUNC20 (FUNC10 (insn),
					FUNC23 (substed, 0,
							NULL_RTX), 0);
  for (i1 = reg_equiv_alt_mem_list [FUNC12 (reg)]; i1; i1 = FUNC18 (i1, 1))
    {
      FUNC25 (!FUNC27 (FUNC18 (i1, 0), substed));
      n_occurrences += FUNC20 (FUNC10 (insn), FUNC18 (i1, 0), 0);
    }
  if (n_occurrences > n_inherited)
    return;

  /* If the pseudo-reg we are reloading is no longer referenced
     anywhere between the store into it and here,
     and we're within the same basic block, then the value can only
     pass through the reload reg and end up here.
     Otherwise, give up--return.  */
  for (i1 = FUNC7 (output_reload_insn);
       i1 != insn; i1 = FUNC7 (i1))
    {
      if (FUNC9 (i1))
	return;
      if ((FUNC8 (i1) || FUNC0 (i1))
	  && FUNC26 (reg, FUNC10 (i1)))
	{
	  /* If this is USE in front of INSN, we only have to check that
	     there are no more references than accounted for by inheritance.  */
	  while (FUNC8 (i1) && FUNC1 (FUNC10 (i1)) == USE)
	    {
	      n_occurrences += FUNC27 (reg, FUNC18 (FUNC10 (i1), 0)) != 0;
	      i1 = FUNC7 (i1);
	    }
	  if (n_occurrences <= n_inherited && i1 == insn)
	    break;
	  return;
	}
    }

  /* We will be deleting the insn.  Remove the spill reg information.  */
  for (k = hard_regno_nregs[last_reload_reg][FUNC2 (reg)]; k-- > 0; )
    {
      spill_reg_store[last_reload_reg + k] = 0;
      spill_reg_stored_to[last_reload_reg + k] = 0;
    }

  /* The caller has already checked that REG dies or is set in INSN.
     It has also checked that we are optimizing, and thus some
     inaccuracies in the debugging information are acceptable.
     So we could just delete output_reload_insn.  But in some cases
     we can improve the debugging information without sacrificing
     optimization - maybe even improving the code: See if the pseudo
     reg has been completely replaced with reload regs.  If so, delete
     the store insn and forget we had a stack slot for the pseudo.  */
  if (rld[j].out != rld[j].in
      && FUNC14 (FUNC12 (reg)) == 1
      && FUNC15 (FUNC12 (reg)) == 1
      && FUNC13 (FUNC12 (reg)) >= 0
      && FUNC24 (insn, REG_DEAD, FUNC12 (reg)))
    {
      rtx i2;

      /* We know that it was used only between here and the beginning of
	 the current basic block.  (We also know that the last use before
	 INSN was the output reload we are thinking of deleting, but never
	 mind that.)  Search that range; see if any ref remains.  */
      for (i2 = FUNC11 (insn); i2; i2 = FUNC11 (i2))
	{
	  rtx set = FUNC28 (i2);

	  /* Uses which just store in the pseudo don't count,
	     since if they are the only uses, they are dead.  */
	  if (set != 0 && FUNC16 (set) == reg)
	    continue;
	  if (FUNC5 (i2)
	      || FUNC4 (i2))
	    break;
	  if ((FUNC8 (i2) || FUNC0 (i2))
	      && FUNC26 (reg, FUNC10 (i2)))
	    {
	      /* Some other ref remains; just delete the output reload we
		 know to be dead.  */
	      FUNC21 (output_reload_insn, insn);
	      FUNC22 (output_reload_insn);
	      return;
	    }
	}

      /* Delete the now-dead stores into this pseudo.  Note that this
	 loop also takes care of deleting output_reload_insn.  */
      for (i2 = FUNC11 (insn); i2; i2 = FUNC11 (i2))
	{
	  rtx set = FUNC28 (i2);

	  if (set != 0 && FUNC16 (set) == reg)
	    {
	      FUNC21 (i2, insn);
	      FUNC22 (i2);
	    }
	  if (FUNC5 (i2)
	      || FUNC4 (i2))
	    break;
	}

      /* For the debugging info, say the pseudo lives in this reload reg.  */
      reg_renumber[FUNC12 (reg)] = FUNC12 (rld[j].reg_rtx);
      FUNC19 (FUNC12 (reg), -1);
    }
  else
    {
      FUNC21 (output_reload_insn, insn);
      FUNC22 (output_reload_insn);
    }
}