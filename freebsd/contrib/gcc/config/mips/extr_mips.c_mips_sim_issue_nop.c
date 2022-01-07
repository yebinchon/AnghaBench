
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_sim {scalar_t__ insns_left; } ;


 int mips_sim_next_cycle (struct mips_sim*) ;

__attribute__((used)) static void
mips_sim_issue_nop (struct mips_sim *state)
{
  if (state->insns_left == 0)
    mips_sim_next_cycle (state);
  state->insns_left--;
}
