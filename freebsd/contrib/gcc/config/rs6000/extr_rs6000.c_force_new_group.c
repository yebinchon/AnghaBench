
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int FILE ;


 scalar_t__ NULL_RTX ;
 int emit_insn_before (scalar_t__,scalar_t__) ;
 int fprintf (int *,char*,int,int) ;
 scalar_t__ gen_nop () ;
 scalar_t__ insn_terminates_group_p (scalar_t__,int ) ;
 int is_branch_slot_insn (scalar_t__) ;
 int is_costly_group (scalar_t__*,scalar_t__) ;
 scalar_t__ is_cracked_insn (scalar_t__) ;
 int previous_group ;
 int rs6000_issue_rate () ;
 int rs6000_sched_insert_nops ;
 int sched_finish_regroup_exact ;

__attribute__((used)) static int
force_new_group (int sched_verbose, FILE *dump, rtx *group_insns,
   rtx next_insn, bool *group_end, int can_issue_more,
   int *group_count)
{
  rtx nop;
  bool force;
  int issue_rate = rs6000_issue_rate ();
  bool end = *group_end;
  int i;

  if (next_insn == NULL_RTX)
    return can_issue_more;

  if (rs6000_sched_insert_nops > sched_finish_regroup_exact)
    return can_issue_more;

  force = is_costly_group (group_insns, next_insn);
  if (!force)
    return can_issue_more;

  if (sched_verbose > 6)
    fprintf (dump,"force: group count = %d, can_issue_more = %d\n",
      *group_count ,can_issue_more);

  if (rs6000_sched_insert_nops == sched_finish_regroup_exact)
    {
      if (*group_end)
 can_issue_more = 0;






      if (can_issue_more && !is_branch_slot_insn (next_insn))
 can_issue_more--;

      while (can_issue_more > 0)
 {
   nop = gen_nop ();
   emit_insn_before (nop, next_insn);
   can_issue_more--;
 }

      *group_end = 1;
      return 0;
    }

  if (rs6000_sched_insert_nops < sched_finish_regroup_exact)
    {
      int n_nops = rs6000_sched_insert_nops;



      if (can_issue_more == 0)
 can_issue_more = issue_rate;
      can_issue_more--;
      if (can_issue_more == 0)
 {
   can_issue_more = issue_rate - 1;
   (*group_count)++;
   end = 1;
   for (i = 0; i < issue_rate; i++)
     {
       group_insns[i] = 0;
     }
 }

      while (n_nops > 0)
 {
   nop = gen_nop ();
   emit_insn_before (nop, next_insn);
   if (can_issue_more == issue_rate - 1)
     end = 0;
   can_issue_more--;
   if (can_issue_more == 0)
     {
       can_issue_more = issue_rate - 1;
       (*group_count)++;
       end = 1;
       for (i = 0; i < issue_rate; i++)
  {
    group_insns[i] = 0;
  }
     }
   n_nops--;
 }


      can_issue_more++;


      *group_end
 = (end
    || (can_issue_more == 1 && !is_branch_slot_insn (next_insn))
    || (can_issue_more <= 2 && is_cracked_insn (next_insn))
    || (can_issue_more < issue_rate &&
        insn_terminates_group_p (next_insn, previous_group)));
      if (*group_end && end)
 (*group_count)--;

      if (sched_verbose > 6)
 fprintf (dump, "done force: group count = %d, can_issue_more = %d\n",
   *group_count, can_issue_more);
      return can_issue_more;
    }

  return can_issue_more;
}
