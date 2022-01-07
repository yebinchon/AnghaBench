
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tracing_start_sched_switch () ;

void tracing_start_cmdline_record(void)
{
 tracing_start_sched_switch();
}
