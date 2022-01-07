
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int trace_ops ;
 scalar_t__ tracer_enabled ;
 int unregister_ftrace_function (int *) ;

__attribute__((used)) static void stop_irqsoff_tracer(struct trace_array *tr)
{
 tracer_enabled = 0;
 unregister_ftrace_function(&trace_ops);
}
