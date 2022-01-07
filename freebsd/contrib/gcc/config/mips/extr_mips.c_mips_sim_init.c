
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_sim {int dfa_state; int issue_rate; } ;
typedef int state_t ;


 int mips_issue_rate () ;
 int mips_sim_reset (struct mips_sim*) ;

__attribute__((used)) static void
mips_sim_init (struct mips_sim *state, state_t dfa_state)
{
  state->issue_rate = mips_issue_rate ();
  state->dfa_state = dfa_state;
  mips_sim_reset (state);
}
