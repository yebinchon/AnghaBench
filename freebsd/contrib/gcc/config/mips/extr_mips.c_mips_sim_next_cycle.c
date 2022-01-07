
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_sim {int dfa_state; int issue_rate; int insns_left; int time; } ;


 int state_transition (int ,int ) ;

__attribute__((used)) static void
mips_sim_next_cycle (struct mips_sim *state)
{
  state->time++;
  state->insns_left = state->issue_rate;
  state_transition (state->dfa_state, 0);
}
