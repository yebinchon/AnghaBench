
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int FILE ;


 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PUT_MODE (scalar_t__,scalar_t__) ;
 scalar_t__ TImode ;
 scalar_t__ VOIDmode ;
 scalar_t__* alloca (int) ;
 int current_group ;
 int force_new_group (int,int *,scalar_t__*,scalar_t__,int*,int,int*) ;
 scalar_t__ get_next_active_insn (scalar_t__,scalar_t__) ;
 scalar_t__ insn_terminates_group_p (scalar_t__,int ) ;
 int is_branch_slot_insn (scalar_t__) ;
 scalar_t__ is_cracked_insn (scalar_t__) ;
 int previous_group ;
 int rs6000_issue_rate () ;
 int rs6000_variable_issue (int *,int,scalar_t__,int) ;

__attribute__((used)) static int
redefine_groups (FILE *dump, int sched_verbose, rtx prev_head_insn, rtx tail)
{
  rtx insn, next_insn;
  int issue_rate;
  int can_issue_more;
  int slot, i;
  bool group_end;
  int group_count = 0;
  rtx *group_insns;


  issue_rate = rs6000_issue_rate ();
  group_insns = alloca (issue_rate * sizeof (rtx));
  for (i = 0; i < issue_rate; i++)
    {
      group_insns[i] = 0;
    }
  can_issue_more = issue_rate;
  slot = 0;
  insn = get_next_active_insn (prev_head_insn, tail);
  group_end = 0;

  while (insn != NULL_RTX)
    {
      slot = (issue_rate - can_issue_more);
      group_insns[slot] = insn;
      can_issue_more =
 rs6000_variable_issue (dump, sched_verbose, insn, can_issue_more);
      if (insn_terminates_group_p (insn, current_group))
 can_issue_more = 0;

      next_insn = get_next_active_insn (insn, tail);
      if (next_insn == NULL_RTX)
 return group_count + 1;


      group_end
 = (can_issue_more == 0
    || (can_issue_more == 1 && !is_branch_slot_insn (next_insn))
    || (can_issue_more <= 2 && is_cracked_insn (next_insn))
    || (can_issue_more < issue_rate &&
        insn_terminates_group_p (next_insn, previous_group)));

      can_issue_more = force_new_group (sched_verbose, dump, group_insns,
     next_insn, &group_end, can_issue_more,
     &group_count);

      if (group_end)
 {
   group_count++;
   can_issue_more = 0;
   for (i = 0; i < issue_rate; i++)
     {
       group_insns[i] = 0;
     }
 }

      if (GET_MODE (next_insn) == TImode && can_issue_more)
 PUT_MODE (next_insn, VOIDmode);
      else if (!can_issue_more && GET_MODE (next_insn) != TImode)
 PUT_MODE (next_insn, TImode);

      insn = next_insn;
      if (can_issue_more == 0)
 can_issue_more = issue_rate;
    }

  return group_count;
}
