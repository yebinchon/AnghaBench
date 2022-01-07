
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
typedef int pid_t ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TASK_COMM_LEN ;
 int TRACE_GRAPH_PROCINFO_LENGTH ;
 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int trace_find_cmdline (int,char*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static enum print_line_t
print_graph_proc(struct trace_seq *s, pid_t pid)
{
 char comm[TASK_COMM_LEN];

 char pid_str[11];
 int spaces = 0;
 int ret;
 int len;
 int i;

 trace_find_cmdline(pid, comm);
 comm[7] = '\0';
 sprintf(pid_str, "%d", pid);


 len = strlen(comm) + strlen(pid_str) + 1;

 if (len < TRACE_GRAPH_PROCINFO_LENGTH)
  spaces = TRACE_GRAPH_PROCINFO_LENGTH - len;


 for (i = 0; i < spaces / 2; i++) {
  ret = trace_seq_printf(s, " ");
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
 }

 ret = trace_seq_printf(s, "%s-%s", comm, pid_str);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 for (i = 0; i < spaces - (spaces / 2); i++) {
  ret = trace_seq_printf(s, " ");
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
 }
 return TRACE_TYPE_HANDLED;
}
