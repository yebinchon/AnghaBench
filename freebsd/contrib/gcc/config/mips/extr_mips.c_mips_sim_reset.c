
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_sim {int dfa_state; int last_set; int issue_rate; int insns_left; scalar_t__ time; } ;


 int memset (int *,int ,int) ;
 int state_reset (int ) ;

__attribute__((used)) static void
mips_sim_reset (struct mips_sim *state)
{
  state->time = 0;
  state->insns_left = state->issue_rate;
  memset (&state->last_set, 0, sizeof (state->last_set));
  state_reset (state->dfa_state);
}
