
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int ftrace_pid_function (unsigned long,unsigned long) ;
 int test_tsk_trace_trace (int ) ;

__attribute__((used)) static void ftrace_pid_func(unsigned long ip, unsigned long parent_ip)
{
 if (!test_tsk_trace_trace(current))
  return;

 ftrace_pid_function(ip, parent_ip);
}
