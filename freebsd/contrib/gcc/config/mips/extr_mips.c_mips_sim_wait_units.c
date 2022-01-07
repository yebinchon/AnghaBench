
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_sim {scalar_t__ insns_left; int dfa_state; } ;
typedef int state_t ;
typedef int rtx ;


 int alloca (int ) ;
 int memcpy (int ,int ,int ) ;
 int mips_sim_next_cycle (struct mips_sim*) ;
 int state_size () ;
 scalar_t__ state_transition (int ,int ) ;

__attribute__((used)) static void
mips_sim_wait_units (struct mips_sim *state, rtx insn)
{
  state_t tmp_state;

  tmp_state = alloca (state_size ());
  while (state->insns_left == 0
  || (memcpy (tmp_state, state->dfa_state, state_size ()),
      state_transition (tmp_state, insn) >= 0))
    mips_sim_next_cycle (state);
}
