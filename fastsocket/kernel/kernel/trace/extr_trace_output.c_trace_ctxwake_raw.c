
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int seq; int ent; } ;
struct ctx_switch_entry {int next_prio; int next_pid; int next_cpu; int prev_prio; int prev_pid; int next_state; int prev_state; } ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 void* task_state_char (int ) ;
 int trace_assign_type (struct ctx_switch_entry*,int ) ;
 int trace_seq_printf (int *,char*,int ,int ,char,int ,int ,int ,int) ;

__attribute__((used)) static int trace_ctxwake_raw(struct trace_iterator *iter, char S)
{
 struct ctx_switch_entry *field;
 int T;

 trace_assign_type(field, iter->ent);

 if (!S)
  S = task_state_char(field->prev_state);
 T = task_state_char(field->next_state);
 if (!trace_seq_printf(&iter->seq, "%d %d %c %d %d %d %c\n",
         field->prev_pid,
         field->prev_prio,
         S,
         field->next_cpu,
         field->next_pid,
         field->next_prio,
         T))
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
