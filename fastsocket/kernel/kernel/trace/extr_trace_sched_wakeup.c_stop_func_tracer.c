
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_ops ;
 scalar_t__ tracer_enabled ;
 int unregister_ftrace_function (int *) ;
 int unregister_ftrace_graph () ;

__attribute__((used)) static void stop_func_tracer(int graph)
{
 tracer_enabled = 0;

 if (!graph)
  unregister_ftrace_function(&trace_ops);
 else
  unregister_ftrace_graph();
}
