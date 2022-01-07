
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_seq {int dummy; } ;
struct fgraph_data {int dummy; } ;
typedef int pid_t ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int last_pid; } ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 TYPE_1__* per_cpu_ptr (struct fgraph_data*,int) ;
 int print_graph_cpu (struct trace_seq*,int) ;
 int print_graph_proc (struct trace_seq*,int) ;
 int trace_seq_printf (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t
verif_pid(struct trace_seq *s, pid_t pid, int cpu, struct fgraph_data *data)
{
 pid_t prev_pid;
 pid_t *last_pid;
 int ret;

 if (!data)
  return TRACE_TYPE_HANDLED;

 last_pid = &(per_cpu_ptr(data, cpu)->last_pid);

 if (*last_pid == pid)
  return TRACE_TYPE_HANDLED;

 prev_pid = *last_pid;
 *last_pid = pid;

 if (prev_pid == -1)
  return TRACE_TYPE_HANDLED;
 ret = trace_seq_printf(s,
  " ------------------------------------------\n");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 ret = print_graph_cpu(s, cpu);
 if (ret == TRACE_TYPE_PARTIAL_LINE)
  return TRACE_TYPE_PARTIAL_LINE;

 ret = print_graph_proc(s, prev_pid);
 if (ret == TRACE_TYPE_PARTIAL_LINE)
  return TRACE_TYPE_PARTIAL_LINE;

 ret = trace_seq_printf(s, " => ");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 ret = print_graph_proc(s, pid);
 if (ret == TRACE_TYPE_PARTIAL_LINE)
  return TRACE_TYPE_PARTIAL_LINE;

 ret = trace_seq_printf(s,
  "\n ------------------------------------------\n\n");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
