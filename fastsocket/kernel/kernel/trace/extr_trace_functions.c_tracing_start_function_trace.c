
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
struct TYPE_5__ {int func; } ;


 int TRACE_FUNC_OPT_STACK ;
 int TRACE_ITER_PREEMPTONLY ;
 int ftrace_function_enabled ;
 TYPE_4__ func_flags ;
 int function_trace_call ;
 int function_trace_call_preempt_only ;
 int register_ftrace_function (TYPE_1__*) ;
 int trace_flags ;
 TYPE_1__ trace_ops ;
 TYPE_1__ trace_stack_ops ;

__attribute__((used)) static void tracing_start_function_trace(void)
{
 ftrace_function_enabled = 0;

 if (trace_flags & TRACE_ITER_PREEMPTONLY)
  trace_ops.func = function_trace_call_preempt_only;
 else
  trace_ops.func = function_trace_call;

 if (func_flags.val & TRACE_FUNC_OPT_STACK)
  register_ftrace_function(&trace_stack_ops);
 else
  register_ftrace_function(&trace_ops);

 ftrace_function_enabled = 1;
}
