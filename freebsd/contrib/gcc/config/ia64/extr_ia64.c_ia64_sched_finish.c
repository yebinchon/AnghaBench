
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next_tail; int prev_head; } ;
typedef int FILE ;


 int INSN_UID (int ) ;
 int NEXT_INSN (int ) ;
 int PREV_INSN (int ) ;
 int bundling (int *,int,int ,int ) ;
 TYPE_1__* current_sched_info ;
 int final_emit_insn_group_barriers (int *) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ reload_completed ;

__attribute__((used)) static void
ia64_sched_finish (FILE *dump, int sched_verbose)
{
  if (sched_verbose)
    fprintf (dump, "// Finishing schedule.\n");
  if (!reload_completed)
    return;
  if (reload_completed)
    {
      final_emit_insn_group_barriers (dump);
      bundling (dump, sched_verbose, current_sched_info->prev_head,
  current_sched_info->next_tail);
      if (sched_verbose && dump)
 fprintf (dump, "//    finishing %d-%d\n",
   INSN_UID (NEXT_INSN (current_sched_info->prev_head)),
   INSN_UID (PREV_INSN (current_sched_info->next_tail)));

      return;
    }
}
