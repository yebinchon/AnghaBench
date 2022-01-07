
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __ftrace_trace_function ;
 void* __ftrace_trace_function_delay ;
 void* ftrace_pid_function ;
 void* ftrace_stub ;
 void* ftrace_trace_function ;

void clear_ftrace_function(void)
{
 ftrace_trace_function = ftrace_stub;
 __ftrace_trace_function = ftrace_stub;
 __ftrace_trace_function_delay = ftrace_stub;
 ftrace_pid_function = ftrace_stub;
}
