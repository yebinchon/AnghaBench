
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 struct trace_array* graph_array ;
 int register_ftrace_graph (int *,int *) ;
 int trace_graph_entry ;
 int trace_graph_return ;
 int tracing_start_cmdline_record () ;

__attribute__((used)) static int graph_trace_init(struct trace_array *tr)
{
 int ret;

 graph_array = tr;
 ret = register_ftrace_graph(&trace_graph_return,
        &trace_graph_entry);
 if (ret)
  return ret;
 tracing_start_cmdline_record();

 return 0;
}
