
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {struct ring_buffer* buffer; } ;
struct task_struct {int state; int prio; int pid; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ftrace_event_call {int dummy; } ;
struct ctx_switch_entry {int next_cpu; int next_state; int next_prio; int next_pid; int prev_state; int prev_prio; int prev_pid; } ;


 int TRACE_CTX ;
 struct ftrace_event_call event_context_switch ;
 int filter_check_discard (struct ftrace_event_call*,struct ctx_switch_entry*,struct ring_buffer*,struct ring_buffer_event*) ;
 struct ctx_switch_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 int task_cpu (struct task_struct*) ;
 struct ring_buffer_event* trace_buffer_lock_reserve (struct ring_buffer*,int ,int,unsigned long,int) ;
 int trace_buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*,unsigned long,int) ;

void
tracing_sched_switch_trace(struct trace_array *tr,
      struct task_struct *prev,
      struct task_struct *next,
      unsigned long flags, int pc)
{
 struct ftrace_event_call *call = &event_context_switch;
 struct ring_buffer *buffer = tr->buffer;
 struct ring_buffer_event *event;
 struct ctx_switch_entry *entry;

 event = trace_buffer_lock_reserve(buffer, TRACE_CTX,
       sizeof(*entry), flags, pc);
 if (!event)
  return;
 entry = ring_buffer_event_data(event);
 entry->prev_pid = prev->pid;
 entry->prev_prio = prev->prio;
 entry->prev_state = prev->state;
 entry->next_pid = next->pid;
 entry->next_prio = next->prio;
 entry->next_state = next->state;
 entry->next_cpu = task_cpu(next);

 if (!filter_check_discard(call, entry, buffer, event))
  trace_buffer_unlock_commit(buffer, event, flags, pc);
}
