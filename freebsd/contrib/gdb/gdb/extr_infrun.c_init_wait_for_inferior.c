
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kind; } ;


 int TARGET_SIGNAL_0 ;
 int TARGET_WAITKIND_SPURIOUS ;
 int breakpoint_init_inferior (int ) ;
 scalar_t__ breakpoints_inserted ;
 int clear_proceed_status () ;
 int inf_starting ;
 scalar_t__ number_of_threads_in_syscalls ;
 TYPE_1__ pending_follow ;
 scalar_t__ prev_pc ;
 scalar_t__ stepping_past_singlestep_breakpoint ;
 int stop_signal ;
 scalar_t__ trap_expected_after_continue ;

void
init_wait_for_inferior (void)
{

  prev_pc = 0;




  breakpoints_inserted = 0;
  breakpoint_init_inferior (inf_starting);


  stop_signal = TARGET_SIGNAL_0;


  pending_follow.kind = TARGET_WAITKIND_SPURIOUS;


  number_of_threads_in_syscalls = 0;

  clear_proceed_status ();

  stepping_past_singlestep_breakpoint = 0;
}
