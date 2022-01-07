
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ftrace_stop () ;
 int tracing_disabled ;
 int tracing_off_permanent () ;

void ftrace_off_permanent(void)
{
 tracing_disabled = 1;
 ftrace_stop();
 tracing_off_permanent();
}
