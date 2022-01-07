
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {scalar_t__ type; scalar_t__ enable_state; int number; } ;


 scalar_t__ bp_disabled ;
 scalar_t__ bp_permanent ;
 scalar_t__ bp_watchpoint_scope ;
 int breakpoint_modify_event (int ) ;
 int check_duplicates (struct breakpoint*) ;
 int modify_breakpoint_hook (struct breakpoint*) ;

void
disable_breakpoint (struct breakpoint *bpt)
{



  if (bpt->type == bp_watchpoint_scope)
    return;


  if (bpt->enable_state == bp_permanent)
    return;

  bpt->enable_state = bp_disabled;

  check_duplicates (bpt);

  if (modify_breakpoint_hook)
    modify_breakpoint_hook (bpt);
  breakpoint_modify_event (bpt->number);
}
