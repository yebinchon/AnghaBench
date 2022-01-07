
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ftrace_func_t ;


 scalar_t__ ftrace_pid_func ;
 scalar_t__ ftrace_pid_function ;

__attribute__((used)) static void set_ftrace_pid_function(ftrace_func_t func)
{

 if (func != ftrace_pid_func)
  ftrace_pid_function = func;
}
