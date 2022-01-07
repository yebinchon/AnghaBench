
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_ftrace_function () ;
 int ftrace_disabled ;
 scalar_t__ ftrace_enabled ;

void ftrace_kill(void)
{
 ftrace_disabled = 1;
 ftrace_enabled = 0;
 clear_ftrace_function();
}
