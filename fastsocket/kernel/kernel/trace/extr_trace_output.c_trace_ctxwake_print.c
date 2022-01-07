
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int seq; int ent; } ;
struct ctx_switch_entry {int next_prio; int next_pid; int next_cpu; int prev_prio; int prev_pid; int prev_state; int next_state; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TASK_COMM_LEN ;
 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int task_state_char (int ) ;
 int trace_assign_type (struct ctx_switch_entry*,int ) ;
 int trace_find_cmdline (int ,char*) ;
 int trace_seq_printf (int *,char*,int ,int ,int,char*,int ,int ,int ,int,char*) ;

__attribute__((used)) static enum print_line_t trace_ctxwake_print(struct trace_iterator *iter,
          char *delim)
{
 struct ctx_switch_entry *field;
 char comm[TASK_COMM_LEN];
 int S, T;


 trace_assign_type(field, iter->ent);

 T = task_state_char(field->next_state);
 S = task_state_char(field->prev_state);
 trace_find_cmdline(field->next_pid, comm);
 if (!trace_seq_printf(&iter->seq,
         " %5d:%3d:%c %s [%03d] %5d:%3d:%c %s\n",
         field->prev_pid,
         field->prev_prio,
         S, delim,
         field->next_cpu,
         field->next_pid,
         field->next_prio,
         T, comm))
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
