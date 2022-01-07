
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_state {int dfa_state; } ;


 int FALSE ;
 int TRUE ;
 int free_bundle_state (struct bundle_state*) ;
 int ia64_nop ;
 scalar_t__ state_transition (int ,int ) ;

__attribute__((used)) static int
try_issue_nops (struct bundle_state *curr_state, int nops_num)
{
  int i;

  for (i = 0; i < nops_num; i++)
    if (state_transition (curr_state->dfa_state, ia64_nop) >= 0)
      {
 free_bundle_state (curr_state);
 return FALSE;
      }
  return TRUE;
}
