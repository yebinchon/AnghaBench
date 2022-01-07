
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_head; int next_tail; } ;
typedef int FILE ;


 TYPE_1__* current_sched_info ;
 int fprintf (int *,char*,...) ;
 int pad_groups (int *,int,int ,int ) ;
 int print_rtl (int *,int ) ;
 int redefine_groups (int *,int,int ,int ) ;
 scalar_t__ reload_completed ;
 scalar_t__ rs6000_sched_groups ;
 scalar_t__ rs6000_sched_insert_nops ;
 scalar_t__ sched_finish_none ;
 scalar_t__ sched_finish_pad_groups ;

__attribute__((used)) static void
rs6000_sched_finish (FILE *dump, int sched_verbose)
{
  int n_groups;

  if (sched_verbose)
    fprintf (dump, "=== Finishing schedule.\n");

  if (reload_completed && rs6000_sched_groups)
    {
      if (rs6000_sched_insert_nops == sched_finish_none)
 return;

      if (rs6000_sched_insert_nops == sched_finish_pad_groups)
 n_groups = pad_groups (dump, sched_verbose,
          current_sched_info->prev_head,
          current_sched_info->next_tail);
      else
 n_groups = redefine_groups (dump, sched_verbose,
        current_sched_info->prev_head,
        current_sched_info->next_tail);

      if (sched_verbose >= 6)
 {
       fprintf (dump, "ngroups = %d\n", n_groups);
   print_rtl (dump, current_sched_info->prev_head);
   fprintf (dump, "Done finish_sched\n");
 }
    }
}
