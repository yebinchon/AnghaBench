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
struct bundle_state {int insn; int before_nops_num; int after_nops_num; int accumulated_insns_num; int branch_deviation; int /*<<< orphan*/  dfa_state; struct bundle_state* allocated_states_chain; int /*<<< orphan*/  cost; struct bundle_state* originator; scalar_t__ insn_num; } ;
typedef  int /*<<< orphan*/  state_t ;
typedef  int rtx ;

/* Variables and functions */
 scalar_t__ ASM_INPUT ; 
 scalar_t__ CODE_FOR_insn_group_barrier ; 
 scalar_t__ FIRST_INSN_YES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ TImode ; 
 scalar_t__ TYPE_B ; 
 scalar_t__ TYPE_L ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dfa_pre_cycle_insn ; 
 int /*<<< orphan*/  dfa_state_size ; 
 int /*<<< orphan*/  FUNC5 (struct bundle_state*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 struct bundle_state* FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct bundle_state*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  temp_dfa_state ; 
 int /*<<< orphan*/  FUNC13 (struct bundle_state*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bundle_state*,int) ; 

__attribute__((used)) static void
FUNC15 (struct bundle_state *originator, int before_nops_num,
		     rtx insn, int try_bundle_end_p, int only_bundle_end_p)
{
  struct bundle_state *curr_state;

  curr_state = FUNC8 ();
  FUNC11 (curr_state->dfa_state, originator->dfa_state, dfa_state_size);
  curr_state->insn = insn;
  curr_state->insn_num = originator->insn_num + 1;
  curr_state->cost = originator->cost;
  curr_state->originator = originator;
  curr_state->before_nops_num = before_nops_num;
  curr_state->after_nops_num = 0;
  curr_state->accumulated_insns_num
    = originator->accumulated_insns_num + before_nops_num;
  curr_state->branch_deviation = originator->branch_deviation;
  FUNC6 (insn);
  if (FUNC2 (insn) == CODE_FOR_insn_group_barrier)
    {
      FUNC6 (FUNC1 (insn) != TImode);
      if (!FUNC14 (curr_state, before_nops_num))
	return;
      if (!FUNC13 (curr_state, insn))
	return;
      FUNC11 (temp_dfa_state, curr_state->dfa_state, dfa_state_size);
      if (FUNC12 (temp_dfa_state, dfa_pre_cycle_insn) >= 0
	  && curr_state->accumulated_insns_num % 3 != 0)
	{
	  FUNC5 (curr_state);
	  return;
	}
    }
  else if (FUNC1 (insn) != TImode)
    {
      if (!FUNC14 (curr_state, before_nops_num))
	return;
      if (!FUNC13 (curr_state, insn))
	return;
      curr_state->accumulated_insns_num++;
      FUNC6 (FUNC0 (FUNC3 (insn)) != ASM_INPUT
		  && FUNC4 (FUNC3 (insn)) < 0);

      if (FUNC9 (insn) == TYPE_L)
	curr_state->accumulated_insns_num++;
    }
  else
    {
      /* If this is an insn that must be first in a group, then don't allow
	 nops to be emitted before it.  Currently, alloc is the only such
	 supported instruction.  */
      /* ??? The bundling automatons should handle this for us, but they do
	 not yet have support for the first_insn attribute.  */
      if (before_nops_num > 0 && FUNC7 (insn) == FIRST_INSN_YES)
	{
	  FUNC5 (curr_state);
	  return;
	}

      FUNC12 (curr_state->dfa_state, dfa_pre_cycle_insn);
      FUNC12 (curr_state->dfa_state, NULL);
      curr_state->cost++;
      if (!FUNC14 (curr_state, before_nops_num))
	return;
      if (!FUNC13 (curr_state, insn))
	return;
      curr_state->accumulated_insns_num++;
      if (FUNC0 (FUNC3 (insn)) == ASM_INPUT
	  || FUNC4 (FUNC3 (insn)) >= 0)
	{
	  /* Finish bundle containing asm insn.  */
	  curr_state->after_nops_num
	    = 3 - curr_state->accumulated_insns_num % 3;
	  curr_state->accumulated_insns_num
	    += 3 - curr_state->accumulated_insns_num % 3;
	}
      else if (FUNC9 (insn) == TYPE_L)
	curr_state->accumulated_insns_num++;
    }
  if (FUNC9 (insn) == TYPE_B)
    curr_state->branch_deviation
      += 2 - (curr_state->accumulated_insns_num - 1) % 3;
  if (try_bundle_end_p && curr_state->accumulated_insns_num % 3 != 0)
    {
      if (!only_bundle_end_p && FUNC10 (curr_state))
	{
	  state_t dfa_state;
	  struct bundle_state *curr_state1;
	  struct bundle_state *allocated_states_chain;

	  curr_state1 = FUNC8 ();
	  dfa_state = curr_state1->dfa_state;
	  allocated_states_chain = curr_state1->allocated_states_chain;
	  *curr_state1 = *curr_state;
	  curr_state1->dfa_state = dfa_state;
	  curr_state1->allocated_states_chain = allocated_states_chain;
	  FUNC11 (curr_state1->dfa_state, curr_state->dfa_state,
		  dfa_state_size);
	  curr_state = curr_state1;
	}
      if (!FUNC14 (curr_state,
			   3 - curr_state->accumulated_insns_num % 3))
	return;
      curr_state->after_nops_num
	= 3 - curr_state->accumulated_insns_num % 3;
      curr_state->accumulated_insns_num
	+= 3 - curr_state->accumulated_insns_num % 3;
    }
  if (!FUNC10 (curr_state))
    FUNC5 (curr_state);
  return;
}