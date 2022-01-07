
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int FILE ;


 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ TImode ;
 int current_group ;
 int emit_insn_before (scalar_t__,scalar_t__) ;
 scalar_t__ gen_nop () ;
 scalar_t__ get_next_active_insn (scalar_t__,scalar_t__) ;
 int insn_terminates_group_p (scalar_t__,int ) ;
 int is_branch_slot_insn (scalar_t__) ;
 int previous_group ;
 int rs6000_issue_rate () ;
 scalar_t__ rs6000_sched_insert_nops ;
 int rs6000_variable_issue (int *,int,scalar_t__,int) ;
 scalar_t__ sched_finish_pad_groups ;

__attribute__((used)) static int
pad_groups (FILE *dump, int sched_verbose, rtx prev_head_insn, rtx tail)
{
  rtx insn, next_insn;
  rtx nop;
  int issue_rate;
  int can_issue_more;
  int group_end;
  int group_count = 0;


  issue_rate = rs6000_issue_rate ();
  can_issue_more = issue_rate;

  insn = get_next_active_insn (prev_head_insn, tail);
  next_insn = get_next_active_insn (insn, tail);

  while (insn != NULL_RTX)
    {
      can_issue_more =
       rs6000_variable_issue (dump, sched_verbose, insn, can_issue_more);

      group_end = (next_insn == NULL_RTX || GET_MODE (next_insn) == TImode);

      if (next_insn == NULL_RTX)
 break;

      if (group_end)
 {




   if (can_issue_more
       && (rs6000_sched_insert_nops == sched_finish_pad_groups)
       && !insn_terminates_group_p (insn, current_group)
       && !insn_terminates_group_p (next_insn, previous_group))
     {
       if (!is_branch_slot_insn (next_insn))
  can_issue_more--;

       while (can_issue_more)
  {
    nop = gen_nop ();
    emit_insn_before (nop, next_insn);
    can_issue_more--;
  }
     }

   can_issue_more = issue_rate;
   group_count++;
 }

      insn = next_insn;
      next_insn = get_next_active_insn (insn, tail);
    }

  return group_count;
}
