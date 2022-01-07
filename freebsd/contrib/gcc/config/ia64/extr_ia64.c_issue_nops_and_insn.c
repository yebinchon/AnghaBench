
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_state {int insn; int before_nops_num; int after_nops_num; int accumulated_insns_num; int branch_deviation; int dfa_state; struct bundle_state* allocated_states_chain; int cost; struct bundle_state* originator; scalar_t__ insn_num; } ;
typedef int state_t ;
typedef int rtx ;


 scalar_t__ ASM_INPUT ;
 scalar_t__ CODE_FOR_insn_group_barrier ;
 scalar_t__ FIRST_INSN_YES ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int) ;
 scalar_t__ INSN_CODE (int) ;
 int PATTERN (int) ;
 scalar_t__ TImode ;
 scalar_t__ TYPE_B ;
 scalar_t__ TYPE_L ;
 scalar_t__ asm_noperands (int ) ;
 int * dfa_pre_cycle_insn ;
 int dfa_state_size ;
 int free_bundle_state (struct bundle_state*) ;
 int gcc_assert (int) ;
 scalar_t__ get_attr_first_insn (int) ;
 struct bundle_state* get_free_bundle_state () ;
 scalar_t__ ia64_safe_type (int) ;
 scalar_t__ insert_bundle_state (struct bundle_state*) ;
 int memcpy (int ,int ,int ) ;
 int state_transition (int ,int *) ;
 int temp_dfa_state ;
 int try_issue_insn (struct bundle_state*,int) ;
 int try_issue_nops (struct bundle_state*,int) ;

__attribute__((used)) static void
issue_nops_and_insn (struct bundle_state *originator, int before_nops_num,
       rtx insn, int try_bundle_end_p, int only_bundle_end_p)
{
  struct bundle_state *curr_state;

  curr_state = get_free_bundle_state ();
  memcpy (curr_state->dfa_state, originator->dfa_state, dfa_state_size);
  curr_state->insn = insn;
  curr_state->insn_num = originator->insn_num + 1;
  curr_state->cost = originator->cost;
  curr_state->originator = originator;
  curr_state->before_nops_num = before_nops_num;
  curr_state->after_nops_num = 0;
  curr_state->accumulated_insns_num
    = originator->accumulated_insns_num + before_nops_num;
  curr_state->branch_deviation = originator->branch_deviation;
  gcc_assert (insn);
  if (INSN_CODE (insn) == CODE_FOR_insn_group_barrier)
    {
      gcc_assert (GET_MODE (insn) != TImode);
      if (!try_issue_nops (curr_state, before_nops_num))
 return;
      if (!try_issue_insn (curr_state, insn))
 return;
      memcpy (temp_dfa_state, curr_state->dfa_state, dfa_state_size);
      if (state_transition (temp_dfa_state, dfa_pre_cycle_insn) >= 0
   && curr_state->accumulated_insns_num % 3 != 0)
 {
   free_bundle_state (curr_state);
   return;
 }
    }
  else if (GET_MODE (insn) != TImode)
    {
      if (!try_issue_nops (curr_state, before_nops_num))
 return;
      if (!try_issue_insn (curr_state, insn))
 return;
      curr_state->accumulated_insns_num++;
      gcc_assert (GET_CODE (PATTERN (insn)) != ASM_INPUT
    && asm_noperands (PATTERN (insn)) < 0);

      if (ia64_safe_type (insn) == TYPE_L)
 curr_state->accumulated_insns_num++;
    }
  else
    {





      if (before_nops_num > 0 && get_attr_first_insn (insn) == FIRST_INSN_YES)
 {
   free_bundle_state (curr_state);
   return;
 }

      state_transition (curr_state->dfa_state, dfa_pre_cycle_insn);
      state_transition (curr_state->dfa_state, ((void*)0));
      curr_state->cost++;
      if (!try_issue_nops (curr_state, before_nops_num))
 return;
      if (!try_issue_insn (curr_state, insn))
 return;
      curr_state->accumulated_insns_num++;
      if (GET_CODE (PATTERN (insn)) == ASM_INPUT
   || asm_noperands (PATTERN (insn)) >= 0)
 {

   curr_state->after_nops_num
     = 3 - curr_state->accumulated_insns_num % 3;
   curr_state->accumulated_insns_num
     += 3 - curr_state->accumulated_insns_num % 3;
 }
      else if (ia64_safe_type (insn) == TYPE_L)
 curr_state->accumulated_insns_num++;
    }
  if (ia64_safe_type (insn) == TYPE_B)
    curr_state->branch_deviation
      += 2 - (curr_state->accumulated_insns_num - 1) % 3;
  if (try_bundle_end_p && curr_state->accumulated_insns_num % 3 != 0)
    {
      if (!only_bundle_end_p && insert_bundle_state (curr_state))
 {
   state_t dfa_state;
   struct bundle_state *curr_state1;
   struct bundle_state *allocated_states_chain;

   curr_state1 = get_free_bundle_state ();
   dfa_state = curr_state1->dfa_state;
   allocated_states_chain = curr_state1->allocated_states_chain;
   *curr_state1 = *curr_state;
   curr_state1->dfa_state = dfa_state;
   curr_state1->allocated_states_chain = allocated_states_chain;
   memcpy (curr_state1->dfa_state, curr_state->dfa_state,
    dfa_state_size);
   curr_state = curr_state1;
 }
      if (!try_issue_nops (curr_state,
      3 - curr_state->accumulated_insns_num % 3))
 return;
      curr_state->after_nops_num
 = 3 - curr_state->accumulated_insns_num % 3;
      curr_state->accumulated_insns_num
 += 3 - curr_state->accumulated_insns_num % 3;
    }
  if (!insert_bundle_state (curr_state))
    free_bundle_state (curr_state);
  return;
}
