
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_ftrace_function (int *) ;
 int register_ftrace_graph (int *,int *) ;
 int trace_ops ;
 int tracer_enabled ;
 scalar_t__ tracing_is_enabled () ;
 int wakeup_graph_entry ;
 int wakeup_graph_return ;

__attribute__((used)) static int start_func_tracer(int graph)
{
 int ret;

 if (!graph)
  ret = register_ftrace_function(&trace_ops);
 else
  ret = register_ftrace_graph(&wakeup_graph_return,
         &wakeup_graph_entry);

 if (!ret && tracing_is_enabled())
  tracer_enabled = 1;
 else
  tracer_enabled = 0;

 return ret;
}
