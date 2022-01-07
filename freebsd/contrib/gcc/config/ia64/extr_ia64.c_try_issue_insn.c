
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_state {int dfa_state; } ;
typedef scalar_t__ rtx ;


 int FALSE ;
 int TRUE ;
 int free_bundle_state (struct bundle_state*) ;
 scalar_t__ state_transition (int ,scalar_t__) ;

__attribute__((used)) static int
try_issue_insn (struct bundle_state *curr_state, rtx insn)
{
  if (insn && state_transition (curr_state->dfa_state, insn) >= 0)
    {
      free_bundle_state (curr_state);
      return FALSE;
    }
  return TRUE;
}
