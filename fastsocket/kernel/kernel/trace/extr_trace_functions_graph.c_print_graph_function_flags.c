
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_iterator {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_GRAPH_PRINT_ABS_TIME ;
 int TRACE_GRAPH_PRINT_DURATION ;
 int TRACE_ITER_LATENCY_FMT ;
 int __print_graph_function_flags (struct trace_iterator*,int ) ;
 int trace_flags ;

enum print_line_t print_graph_function_flags(struct trace_iterator *iter,
          u32 flags)
{
 if (trace_flags & TRACE_ITER_LATENCY_FMT)
  flags |= TRACE_GRAPH_PRINT_DURATION;
 else
  flags |= TRACE_GRAPH_PRINT_ABS_TIME;

 return __print_graph_function_flags(iter, flags);
}
