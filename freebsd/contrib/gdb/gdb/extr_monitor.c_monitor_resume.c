
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int flags; char* step; char* cont; int (* continue_hook ) () ;} ;


 int MO_NEED_REGDUMP_AFTER_CONT ;
 int MO_RUN_FIRST_TIME ;
 TYPE_1__* current_monitor ;
 int dump_reg_flag ;
 int first_time ;
 int monitor_debug (char*) ;
 int monitor_printf (char*) ;
 int stub1 () ;

__attribute__((used)) static void
monitor_resume (ptid_t ptid, int step, enum target_signal sig)
{

  monitor_debug ("MON resume\n");
  if (current_monitor->flags & MO_RUN_FIRST_TIME && first_time == 1)
    {
      first_time = 0;
      monitor_printf ("run\r");
      if (current_monitor->flags & MO_NEED_REGDUMP_AFTER_CONT)
 dump_reg_flag = 1;
      return;
    }
  if (step)
    monitor_printf (current_monitor->step);
  else
    {
      if (current_monitor->continue_hook)
 (*current_monitor->continue_hook) ();
      else
 monitor_printf (current_monitor->cont);
      if (current_monitor->flags & MO_NEED_REGDUMP_AFTER_CONT)
 dump_reg_flag = 1;
    }
}
