
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ftrace_trace_function (unsigned long,unsigned long) ;
 scalar_t__ function_trace_stop ;

__attribute__((used)) static void ftrace_test_stop_func(unsigned long ip, unsigned long parent_ip)
{
 if (function_trace_stop)
  return;

 __ftrace_trace_function(ip, parent_ip);
}
