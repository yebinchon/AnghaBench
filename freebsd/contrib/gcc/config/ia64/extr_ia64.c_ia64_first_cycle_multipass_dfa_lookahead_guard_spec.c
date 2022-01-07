
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int BEGIN_DATA ;
 scalar_t__ INSN_P (scalar_t__) ;
 int TODO_SPEC (scalar_t__) ;
 int gcc_assert (int) ;
 int pending_data_specs ;

__attribute__((used)) static bool
ia64_first_cycle_multipass_dfa_lookahead_guard_spec (rtx insn)
{
  gcc_assert (insn && INSN_P (insn));


  return (pending_data_specs < 16
   || !(TODO_SPEC (insn) & BEGIN_DATA));
}
