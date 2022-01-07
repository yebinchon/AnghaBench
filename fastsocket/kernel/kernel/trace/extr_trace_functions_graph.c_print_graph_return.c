
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; struct fgraph_data* private; } ;
struct trace_entry {int pid; } ;
struct ftrace_graph_ret {unsigned long long rettime; unsigned long long calltime; int depth; int func; int overrun; } ;
struct fgraph_data {int dummy; } ;
typedef int pid_t ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int depth; } ;


 int TRACE_GRAPH_INDENT ;
 int TRACE_GRAPH_PRINT_DURATION ;
 int TRACE_GRAPH_PRINT_OVERRUN ;
 int TRACE_GRAPH_RET ;
 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 TYPE_1__* per_cpu_ptr (struct fgraph_data*,int) ;
 int print_graph_duration (unsigned long long,struct trace_seq*) ;
 int print_graph_irq (struct trace_iterator*,int ,int ,int,int ,int) ;
 int print_graph_overhead (unsigned long long,struct trace_seq*,int) ;
 scalar_t__ print_graph_prologue (struct trace_iterator*,struct trace_seq*,int ,int ,int) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static enum print_line_t
print_graph_return(struct ftrace_graph_ret *trace, struct trace_seq *s,
     struct trace_entry *ent, struct trace_iterator *iter,
     u32 flags)
{
 unsigned long long duration = trace->rettime - trace->calltime;
 struct fgraph_data *data = iter->private;
 pid_t pid = ent->pid;
 int cpu = iter->cpu;
 int ret;
 int i;

 if (data) {
  int cpu = iter->cpu;
  int *depth = &(per_cpu_ptr(data, cpu)->depth);






  *depth = trace->depth - 1;
 }

 if (print_graph_prologue(iter, s, 0, 0, flags))
  return TRACE_TYPE_PARTIAL_LINE;


 ret = print_graph_overhead(duration, s, flags);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 if (flags & TRACE_GRAPH_PRINT_DURATION) {
  ret = print_graph_duration(duration, s);
  if (ret == TRACE_TYPE_PARTIAL_LINE)
   return TRACE_TYPE_PARTIAL_LINE;
 }


 for (i = 0; i < trace->depth * TRACE_GRAPH_INDENT; i++) {
  ret = trace_seq_printf(s, " ");
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
 }

 ret = trace_seq_printf(s, "}\n");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 if (flags & TRACE_GRAPH_PRINT_OVERRUN) {
  ret = trace_seq_printf(s, " (Overruns: %lu)\n",
     trace->overrun);
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
 }

 ret = print_graph_irq(iter, trace->func, TRACE_GRAPH_RET,
         cpu, pid, flags);
 if (ret == TRACE_TYPE_PARTIAL_LINE)
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
