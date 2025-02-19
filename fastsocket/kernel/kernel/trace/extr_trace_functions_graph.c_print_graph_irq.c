
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int ts; struct trace_seq seq; } ;
typedef int pid_t ;
typedef enum trace_type { ____Placeholder_trace_type } trace_type ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_GRAPH_ENT ;
 int TRACE_GRAPH_PRINT_ABS_TIME ;
 int TRACE_GRAPH_PRINT_CPU ;
 int TRACE_GRAPH_PRINT_DURATION ;
 int TRACE_GRAPH_PRINT_PROC ;
 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int TRACE_TYPE_UNHANDLED ;
 scalar_t__ __irqentry_text_end ;
 scalar_t__ __irqentry_text_start ;
 int print_graph_abs_time (int ,struct trace_seq*) ;
 int print_graph_cpu (struct trace_seq*,int) ;
 int print_graph_overhead (int,struct trace_seq*,int) ;
 int print_graph_proc (struct trace_seq*,int ) ;
 int trace_seq_printf (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t
print_graph_irq(struct trace_iterator *iter, unsigned long addr,
  enum trace_type type, int cpu, pid_t pid, u32 flags)
{
 int ret;
 struct trace_seq *s = &iter->seq;

 if (addr < (unsigned long)__irqentry_text_start ||
  addr >= (unsigned long)__irqentry_text_end)
  return TRACE_TYPE_UNHANDLED;


 if (flags & TRACE_GRAPH_PRINT_ABS_TIME) {
  ret = print_graph_abs_time(iter->ts, s);
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
 }


 if (flags & TRACE_GRAPH_PRINT_CPU) {
  ret = print_graph_cpu(s, cpu);
  if (ret == TRACE_TYPE_PARTIAL_LINE)
   return TRACE_TYPE_PARTIAL_LINE;
 }


 if (flags & TRACE_GRAPH_PRINT_PROC) {
  ret = print_graph_proc(s, pid);
  if (ret == TRACE_TYPE_PARTIAL_LINE)
   return TRACE_TYPE_PARTIAL_LINE;
  ret = trace_seq_printf(s, " | ");
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
 }


 ret = print_graph_overhead(-1, s, flags);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 if (type == TRACE_GRAPH_ENT)
  ret = trace_seq_printf(s, "==========>");
 else
  ret = trace_seq_printf(s, "<==========");

 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 if (flags & TRACE_GRAPH_PRINT_DURATION)
  trace_seq_printf(s, " |");
 ret = trace_seq_printf(s, "\n");

 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;
 return TRACE_TYPE_HANDLED;
}
