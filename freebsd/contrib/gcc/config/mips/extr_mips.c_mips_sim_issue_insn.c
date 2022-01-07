
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_sim {int insns_left; int dfa_state; } ;
typedef int rtx ;


 int PATTERN (int ) ;
 int mips_sim_insn ;
 int mips_sim_record_set ;
 int note_stores (int ,int ,struct mips_sim*) ;
 int state_transition (int ,int ) ;

__attribute__((used)) static void
mips_sim_issue_insn (struct mips_sim *state, rtx insn)
{
  state_transition (state->dfa_state, insn);
  state->insns_left--;

  mips_sim_insn = insn;
  note_stores (PATTERN (insn), mips_sim_record_set, state);
}
