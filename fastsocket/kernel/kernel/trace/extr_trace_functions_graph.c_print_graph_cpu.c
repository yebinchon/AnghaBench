
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int max_bytes_for_cpu ;
 int trace_seq_printf (struct trace_seq*,char*,int ,int) ;

__attribute__((used)) static enum print_line_t
print_graph_cpu(struct trace_seq *s, int cpu)
{
 int ret;






 ret = trace_seq_printf(s, " %*d) ", max_bytes_for_cpu, cpu);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
