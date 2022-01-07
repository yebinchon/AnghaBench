
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;


 int TRACE_FUNC_OPT_STACK ;
 scalar_t__ ftrace_function_enabled ;
 TYPE_1__ func_flags ;
 int trace_ops ;
 int trace_stack_ops ;
 int unregister_ftrace_function (int *) ;

__attribute__((used)) static void tracing_stop_function_trace(void)
{
 ftrace_function_enabled = 0;

 if (func_flags.val & TRACE_FUNC_OPT_STACK)
  unregister_ftrace_function(&trace_stack_ops);
 else
  unregister_ftrace_function(&trace_ops);
}
