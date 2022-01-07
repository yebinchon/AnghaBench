
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int register_ftrace_function (int *) ;
 int trace_ops ;
 int tracer_enabled ;
 scalar_t__ tracing_is_enabled () ;

__attribute__((used)) static void start_irqsoff_tracer(struct trace_array *tr)
{
 register_ftrace_function(&trace_ops);
 if (tracing_is_enabled())
  tracer_enabled = 1;
 else
  tracer_enabled = 0;
}
