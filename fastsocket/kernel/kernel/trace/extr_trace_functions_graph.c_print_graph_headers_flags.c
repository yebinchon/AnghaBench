
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_iterator {int dummy; } ;
struct seq_file {struct trace_iterator* private; } ;


 int TRACE_GRAPH_PRINT_ABS_TIME ;
 int TRACE_GRAPH_PRINT_DURATION ;
 int TRACE_ITER_LATENCY_FMT ;
 int __print_graph_headers_flags (struct seq_file*,int ) ;
 int print_trace_header (struct seq_file*,struct trace_iterator*) ;
 scalar_t__ trace_empty (struct trace_iterator*) ;
 int trace_flags ;

void print_graph_headers_flags(struct seq_file *s, u32 flags)
{
 struct trace_iterator *iter = s->private;

 if (trace_flags & TRACE_ITER_LATENCY_FMT) {

  if (trace_empty(iter))
   return;

  print_trace_header(s, iter);
  flags |= TRACE_GRAPH_PRINT_DURATION;
 } else
  flags |= TRACE_GRAPH_PRINT_ABS_TIME;

 __print_graph_headers_flags(s, flags);
}
