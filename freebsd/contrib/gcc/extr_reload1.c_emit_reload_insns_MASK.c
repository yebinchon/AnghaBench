#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct insn_chain {void* insn; } ;
typedef  void* rtx ;
struct TYPE_4__ {void* reg_rtx; scalar_t__ in_reg; scalar_t__ out; void* out_reg; scalar_t__ in; size_t mode; int /*<<< orphan*/  when_needed; int /*<<< orphan*/  opnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC2 (void*) ; 
 size_t FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int,size_t) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*) ; 
 void* NULL_RTX ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 scalar_t__ FUNC11 (void*) ; 
 scalar_t__ FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 void* FUNC15 (void*) ; 
 scalar_t__ SUBREG ; 
 void* FUNC16 (void*) ; 
 void* FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct insn_chain*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct insn_chain*,TYPE_1__*,int) ; 
 scalar_t__ dump_file ; 
 void* FUNC21 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,void*) ; 
 void* FUNC23 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,char*,int) ; 
 int** hard_regno_nregs ; 
 scalar_t__ FUNC25 (int,int) ; 
 scalar_t__* inpaddr_address_reload_insns ; 
 scalar_t__* input_address_reload_insns ; 
 scalar_t__* input_reload_insns ; 
 int n_reloads ; 
 void** new_spill_reg_store ; 
 scalar_t__ operand_reload_insns ; 
 scalar_t__ other_input_address_reload_insns ; 
 scalar_t__ other_input_reload_insns ; 
 scalar_t__ other_operand_reload_insns ; 
 scalar_t__* other_output_reload_insns ; 
 scalar_t__* outaddr_address_reload_insns ; 
 scalar_t__* output_address_reload_insns ; 
 scalar_t__* output_reload_insns ; 
 int /*<<< orphan*/  reg_has_output_reload ; 
 int /*<<< orphan*/  reg_is_output_reload ; 
 void** reg_last_reload_reg ; 
 int /*<<< orphan*/  reg_reloaded_call_part_clobbered ; 
 int* reg_reloaded_contents ; 
 int /*<<< orphan*/  reg_reloaded_dead ; 
 int /*<<< orphan*/  reg_reloaded_died ; 
 void** reg_reloaded_insn ; 
 int /*<<< orphan*/  reg_reloaded_valid ; 
 int /*<<< orphan*/  FUNC26 (void*,int /*<<< orphan*/ ) ; 
 void** regno_reg_rtx ; 
 scalar_t__* reload_inherited ; 
 int reload_n_operands ; 
 int* reload_order ; 
 scalar_t__* reload_override_in ; 
 scalar_t__ FUNC27 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* reload_spill_index ; 
 TYPE_1__* rld ; 
 void* FUNC28 (void*) ; 
 void** spill_reg_store ; 
 void** spill_reg_stored_to ; 

__attribute__((used)) static void
FUNC29 (struct insn_chain *chain)
{
  rtx insn = chain->insn;

  int j;

  FUNC1 (reg_reloaded_died);

  for (j = 0; j < reload_n_operands; j++)
    input_reload_insns[j] = input_address_reload_insns[j]
      = inpaddr_address_reload_insns[j]
      = output_reload_insns[j] = output_address_reload_insns[j]
      = outaddr_address_reload_insns[j]
      = other_output_reload_insns[j] = 0;
  other_input_address_reload_insns = 0;
  other_input_reload_insns = 0;
  operand_reload_insns = 0;
  other_operand_reload_insns = 0;

  /* Dump reloads into the dump file.  */
  if (dump_file)
    {
      FUNC24 (dump_file, "\nReloads for insn # %d\n", FUNC5 (insn));
      FUNC18 (dump_file);
    }

  /* Now output the instructions to copy the data into and out of the
     reload registers.  Do these in the order that the reloads were reported,
     since reloads of base and index registers precede reloads of operands
     and the operands may need the base and index registers reloaded.  */

  for (j = 0; j < n_reloads; j++)
    {
      if (rld[j].reg_rtx
	  && FUNC9 (rld[j].reg_rtx) < FIRST_PSEUDO_REGISTER)
	new_spill_reg_store[FUNC9 (rld[j].reg_rtx)] = 0;

      FUNC19 (chain, rld + j, j);
      FUNC20 (chain, rld + j, j);
    }

  /* Now write all the insns we made for reloads in the order expected by
     the allocation functions.  Prior to the insn being reloaded, we write
     the following reloads:

     RELOAD_FOR_OTHER_ADDRESS reloads for input addresses.

     RELOAD_OTHER reloads.

     For each operand, any RELOAD_FOR_INPADDR_ADDRESS reloads followed
     by any RELOAD_FOR_INPUT_ADDRESS reloads followed by the
     RELOAD_FOR_INPUT reload for the operand.

     RELOAD_FOR_OPADDR_ADDRS reloads.

     RELOAD_FOR_OPERAND_ADDRESS reloads.

     After the insn being reloaded, we write the following:

     For each operand, any RELOAD_FOR_OUTADDR_ADDRESS reloads followed
     by any RELOAD_FOR_OUTPUT_ADDRESS reload followed by the
     RELOAD_FOR_OUTPUT reload, followed by any RELOAD_OTHER output
     reloads for the operand.  The RELOAD_OTHER output reloads are
     output in descending order by reload number.  */

  FUNC22 (other_input_address_reload_insns, insn);
  FUNC22 (other_input_reload_insns, insn);

  for (j = 0; j < reload_n_operands; j++)
    {
      FUNC22 (inpaddr_address_reload_insns[j], insn);
      FUNC22 (input_address_reload_insns[j], insn);
      FUNC22 (input_reload_insns[j], insn);
    }

  FUNC22 (other_operand_reload_insns, insn);
  FUNC22 (operand_reload_insns, insn);

  for (j = 0; j < reload_n_operands; j++)
    {
      rtx x = FUNC21 (outaddr_address_reload_insns[j], insn);
      x = FUNC21 (output_address_reload_insns[j], x);
      x = FUNC21 (output_reload_insns[j], x);
      FUNC21 (other_output_reload_insns[j], x);
    }

  /* For all the spill regs newly reloaded in this instruction,
     record what they were reloaded from, so subsequent instructions
     can inherit the reloads.

     Update spill_reg_store for the reloads of this insn.
     Copy the elements that were updated in the loop above.  */

  for (j = 0; j < n_reloads; j++)
    {
      int r = reload_order[j];
      int i = reload_spill_index[r];

      /* If this is a non-inherited input reload from a pseudo, we must
	 clear any memory of a previous store to the same pseudo.  Only do
	 something if there will not be an output reload for the pseudo
	 being reloaded.  */
      if (rld[r].in_reg != 0
	  && ! (reload_inherited[r] || reload_override_in[r]))
	{
	  rtx reg = rld[r].in_reg;

	  if (FUNC2 (reg) == SUBREG)
	    reg = FUNC16 (reg);

	  if (FUNC11 (reg)
	      && FUNC9 (reg) >= FIRST_PSEUDO_REGISTER
	      && !FUNC10 (&reg_has_output_reload, FUNC9 (reg)))
	    {
	      int nregno = FUNC9 (reg);

	      if (reg_last_reload_reg[nregno])
		{
		  int last_regno = FUNC9 (reg_last_reload_reg[nregno]);

		  if (reg_reloaded_contents[last_regno] == nregno)
		    spill_reg_store[last_regno] = 0;
		}
	    }
	}

      /* I is nonneg if this reload used a register.
	 If rld[r].reg_rtx is 0, this is an optional reload
	 that we opted to ignore.  */

      if (i >= 0 && rld[r].reg_rtx != 0)
	{
	  int nr = hard_regno_nregs[i][FUNC3 (rld[r].reg_rtx)];
	  int k;
	  int part_reaches_end = 0;
	  int all_reaches_end = 1;

	  /* For a multi register reload, we need to check if all or part
	     of the value lives to the end.  */
	  for (k = 0; k < nr; k++)
	    {
	      if (FUNC27 (i + k, rld[r].opnum,
					    rld[r].when_needed))
		part_reaches_end = 1;
	      else
		all_reaches_end = 0;
	    }

	  /* Ignore reloads that don't reach the end of the insn in
	     entirety.  */
	  if (all_reaches_end)
	    {
	      /* First, clear out memory of what used to be in this spill reg.
		 If consecutive registers are used, clear them all.  */

	      for (k = 0; k < nr; k++)
  	        {
		FUNC0 (reg_reloaded_valid, i + k);
  		  FUNC0 (reg_reloaded_call_part_clobbered, i + k);
  		}

	      /* Maybe the spill reg contains a copy of reload_out.  */
	      if (rld[r].out != 0
		  && (FUNC11 (rld[r].out)
#ifdef AUTO_INC_DEC
		      || ! rld[r].out_reg
#endif
		      || FUNC11 (rld[r].out_reg)))
		{
		  rtx out = (FUNC11 (rld[r].out)
			     ? rld[r].out
			     : rld[r].out_reg
			     ? rld[r].out_reg
/* AUTO_INC */		     : FUNC17 (rld[r].in_reg, 0));
		  int nregno = FUNC9 (out);
		  int nnr = (nregno >= FIRST_PSEUDO_REGISTER ? 1
			     : hard_regno_nregs[nregno]
					       [FUNC3 (rld[r].reg_rtx)]);
		  bool piecemeal;

		  spill_reg_store[i] = new_spill_reg_store[i];
		  spill_reg_stored_to[i] = out;
		  reg_last_reload_reg[nregno] = rld[r].reg_rtx;

		  piecemeal = (nregno < FIRST_PSEUDO_REGISTER
			       && nr == nnr
			       && FUNC25 (r, nregno));

		  /* If NREGNO is a hard register, it may occupy more than
		     one register.  If it does, say what is in the
		     rest of the registers assuming that both registers
		     agree on how many words the object takes.  If not,
		     invalidate the subsequent registers.  */

		  if (nregno < FIRST_PSEUDO_REGISTER)
		    for (k = 1; k < nnr; k++)
		      reg_last_reload_reg[nregno + k]
			= (piecemeal
			   ? regno_reg_rtx[FUNC9 (rld[r].reg_rtx) + k]
			   : 0);

		  /* Now do the inverse operation.  */
		  for (k = 0; k < nr; k++)
		    {
		      FUNC0 (reg_reloaded_dead, i + k);
		      reg_reloaded_contents[i + k]
			= (nregno >= FIRST_PSEUDO_REGISTER || !piecemeal
			   ? nregno
			   : nregno + k);
		      reg_reloaded_insn[i + k] = insn;
		      FUNC13 (reg_reloaded_valid, i + k);
		      if (FUNC4 (i + k, FUNC3 (out)))
			FUNC13 (reg_reloaded_call_part_clobbered, i + k);
		    }
		}

	      /* Maybe the spill reg contains a copy of reload_in.  Only do
		 something if there will not be an output reload for
		 the register being reloaded.  */
	      else if (rld[r].out_reg == 0
		       && rld[r].in != 0
		       && ((FUNC11 (rld[r].in)
			    && FUNC9 (rld[r].in) >= FIRST_PSEUDO_REGISTER
	                    && !FUNC10 (&reg_has_output_reload,
			      			 FUNC9 (rld[r].in)))
			   || (FUNC11 (rld[r].in_reg)
			       && !FUNC10 (&reg_has_output_reload,
						    FUNC9 (rld[r].in_reg))))
		       && ! FUNC26 (rld[r].reg_rtx, FUNC8 (insn)))
		{
		  int nregno;
		  int nnr;
		  rtx in;
		  bool piecemeal;

		  if (FUNC11 (rld[r].in)
		      && FUNC9 (rld[r].in) >= FIRST_PSEUDO_REGISTER)
		    in = rld[r].in;
		  else if (FUNC11 (rld[r].in_reg))
		    in = rld[r].in_reg;
		  else
		    in = FUNC17 (rld[r].in_reg, 0);
		  nregno = FUNC9 (in);

		  nnr = (nregno >= FIRST_PSEUDO_REGISTER ? 1
			 : hard_regno_nregs[nregno]
					   [FUNC3 (rld[r].reg_rtx)]);

		  reg_last_reload_reg[nregno] = rld[r].reg_rtx;

		  piecemeal = (nregno < FIRST_PSEUDO_REGISTER
			       && nr == nnr
			       && FUNC25 (r, nregno));

		  if (nregno < FIRST_PSEUDO_REGISTER)
		    for (k = 1; k < nnr; k++)
		      reg_last_reload_reg[nregno + k]
			= (piecemeal
			   ? regno_reg_rtx[FUNC9 (rld[r].reg_rtx) + k]
			   : 0);

		  /* Unless we inherited this reload, show we haven't
		     recently done a store.
		     Previous stores of inherited auto_inc expressions
		     also have to be discarded.  */
		  if (! reload_inherited[r]
		      || (rld[r].out && ! rld[r].out_reg))
		    spill_reg_store[i] = 0;

		  for (k = 0; k < nr; k++)
		    {
		      FUNC0 (reg_reloaded_dead, i + k);
		      reg_reloaded_contents[i + k]
			= (nregno >= FIRST_PSEUDO_REGISTER || !piecemeal
			   ? nregno
			   : nregno + k);
		      reg_reloaded_insn[i + k] = insn;
		      FUNC13 (reg_reloaded_valid, i + k);
		      if (FUNC4 (i + k, FUNC3 (in)))
			FUNC13 (reg_reloaded_call_part_clobbered, i + k);
		    }
		}
	    }

	  /* However, if part of the reload reaches the end, then we must
	     invalidate the old info for the part that survives to the end.  */
	  else if (part_reaches_end)
	    {
	      for (k = 0; k < nr; k++)
		if (FUNC27 (i + k,
					      rld[r].opnum,
					      rld[r].when_needed))
		  FUNC0 (reg_reloaded_valid, i + k);
	    }
	}

      /* The following if-statement was #if 0'd in 1.34 (or before...).
	 It's reenabled in 1.35 because supposedly nothing else
	 deals with this problem.  */

      /* If a register gets output-reloaded from a non-spill register,
	 that invalidates any previous reloaded copy of it.
	 But forget_old_reloads_1 won't get to see it, because
	 it thinks only about the original insn.  So invalidate it here.
	 Also do the same thing for RELOAD_OTHER constraints where the
	 output is discarded.  */
      if (i < 0 
	  && ((rld[r].out != 0
	       && (FUNC11 (rld[r].out)
		   || (FUNC7 (rld[r].out)
		       && FUNC11 (rld[r].out_reg))))
	      || (rld[r].out == 0 && rld[r].out_reg
		  && FUNC11 (rld[r].out_reg))))
	{
	  rtx out = ((rld[r].out && FUNC11 (rld[r].out))
		     ? rld[r].out : rld[r].out_reg);
	  int nregno = FUNC9 (out);
	  if (nregno >= FIRST_PSEUDO_REGISTER)
	    {
	      rtx src_reg, store_insn = NULL_RTX;

	      reg_last_reload_reg[nregno] = 0;

	      /* If we can find a hard register that is stored, record
		 the storing insn so that we may delete this insn with
		 delete_output_reload.  */
	      src_reg = rld[r].reg_rtx;

	      /* If this is an optional reload, try to find the source reg
		 from an input reload.  */
	      if (! src_reg)
		{
		  rtx set = FUNC28 (insn);
		  if (set && FUNC12 (set) == rld[r].out)
		    {
		      int k;

		      src_reg = FUNC15 (set);
		      store_insn = insn;
		      for (k = 0; k < n_reloads; k++)
			{
			  if (rld[k].in == src_reg)
			    {
			      src_reg = rld[k].reg_rtx;
			      break;
			    }
			}
		    }
		}
	      else
		store_insn = new_spill_reg_store[FUNC9 (src_reg)];
	      if (src_reg && FUNC11 (src_reg)
		  && FUNC9 (src_reg) < FIRST_PSEUDO_REGISTER)
		{
		  int src_regno = FUNC9 (src_reg);
		  int nr = hard_regno_nregs[src_regno][rld[r].mode];
		  /* The place where to find a death note varies with
		     PRESERVE_DEATH_INFO_REGNO_P .  The condition is not
		     necessarily checked exactly in the code that moves
		     notes, so just check both locations.  */
		  rtx note = FUNC23 (insn, REG_DEAD, src_regno);
		  if (! note && store_insn)
		    note = FUNC23 (store_insn, REG_DEAD, src_regno);
		  while (nr-- > 0)
		    {
		      spill_reg_store[src_regno + nr] = store_insn;
		      spill_reg_stored_to[src_regno + nr] = out;
		      reg_reloaded_contents[src_regno + nr] = nregno;
		      reg_reloaded_insn[src_regno + nr] = store_insn;
		      FUNC0 (reg_reloaded_dead, src_regno + nr);
		      FUNC13 (reg_reloaded_valid, src_regno + nr);
		      if (FUNC4 (src_regno + nr, 
							  FUNC3 (src_reg)))
			FUNC13 (reg_reloaded_call_part_clobbered, 
					  src_regno + nr);
		      FUNC13 (reg_is_output_reload, src_regno + nr);
		      if (note)
			FUNC13 (reg_reloaded_died, src_regno);
		      else
			FUNC0 (reg_reloaded_died, src_regno);
		    }
		  reg_last_reload_reg[nregno] = src_reg;
		  /* We have to set reg_has_output_reload here, or else 
		     forget_old_reloads_1 will clear reg_last_reload_reg
		     right away.  */
		  FUNC14 (&reg_has_output_reload,
				     nregno);
		}
	    }
	  else
	    {
	      int num_regs = hard_regno_nregs[nregno][FUNC3 (out)];

	      while (num_regs-- > 0)
		reg_last_reload_reg[nregno + num_regs] = 0;
	    }
	}
    }
  FUNC6 (reg_reloaded_dead, reg_reloaded_died);
}