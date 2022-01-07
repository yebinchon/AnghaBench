
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ boot_trace ;
 scalar_t__ pre_initcalls_finished ;
 int tracing_stop_sched_switch_record () ;

void disable_boot_trace(void)
{
 if (boot_trace && pre_initcalls_finished)
  tracing_stop_sched_switch_record();
}
