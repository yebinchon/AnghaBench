
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ INSN_P (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ ia64_first_cycle_multipass_dfa_lookahead_guard_spec (scalar_t__) ;
 int reload_completed ;
 int safe_group_barrier_needed (scalar_t__) ;

__attribute__((used)) static int
ia64_first_cycle_multipass_dfa_lookahead_guard (rtx insn)
{
  gcc_assert (insn && INSN_P (insn));
  return ((!reload_completed
    || !safe_group_barrier_needed (insn))
   && ia64_first_cycle_multipass_dfa_lookahead_guard_spec (insn));
}
