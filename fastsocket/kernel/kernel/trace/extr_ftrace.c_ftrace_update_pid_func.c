
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ftrace_stub ;
 scalar_t__ ftrace_trace_function ;
 int update_ftrace_function () ;

__attribute__((used)) static void ftrace_update_pid_func(void)
{

 if (ftrace_trace_function == ftrace_stub)
  return;

 update_ftrace_function();
}
