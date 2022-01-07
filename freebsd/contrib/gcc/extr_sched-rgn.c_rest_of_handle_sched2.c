
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int cleanup_cfg (int ) ;
 int count_or_remove_death_notes (int *,int) ;
 scalar_t__ flag_sched2_use_superblocks ;
 scalar_t__ flag_sched2_use_traces ;
 int schedule_ebbs () ;
 int schedule_insns () ;
 int split_all_insns (int) ;

__attribute__((used)) static unsigned int
rest_of_handle_sched2 (void)
{
  return 0;
}
