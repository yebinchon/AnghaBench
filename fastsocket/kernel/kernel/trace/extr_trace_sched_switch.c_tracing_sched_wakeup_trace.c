
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


 int TRACE_WAKE ;
 struct ftrace_event_call event_wakeup ;
 int filter_check_discard (struct ftrace_event_call*,struct ctx_switch_entry*,struct ring_buffer*,struct ring_buffer_event*) ;
 int ftrace_trace_stack (struct ring_buffer*,unsigned long,int,int) ;
 int ftrace_trace_userstack (struct ring_buffer*,unsigned long,int) ;
 struct ctx_switch_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 int ring_buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*) ;
 int task_cpu (struct task_struct*) ;
 struct ring_buffer_event* trace_buffer_lock_reserve (struct ring_buffer*,int ,int,unsigned long,int) ;

void
tracing_sched_wakeup_trace(struct trace_array *tr,
      struct task_struct *wakee,
      struct task_struct *curr,
      unsigned long flags, int pc)
{
 struct ftrace_event_call *call = &event_wakeup;
 struct ring_buffer_event *event;
 struct ctx_switch_entry *entry;
 struct ring_buffer *buffer = tr->buffer;

 event = trace_buffer_lock_reserve(buffer, TRACE_WAKE,
       sizeof(*entry), flags, pc);
 if (!event)
  return;
 entry = ring_buffer_event_data(event);
 entry->prev_pid = curr->pid;
 entry->prev_prio = curr->prio;
 entry->prev_state = curr->state;
 entry->next_pid = wakee->pid;
 entry->next_prio = wakee->prio;
 entry->next_state = wakee->state;
 entry->next_cpu = task_cpu(wakee);

 if (!filter_check_discard(call, entry, buffer, event))
  ring_buffer_unlock_commit(buffer, event);
 ftrace_trace_stack(tr->buffer, flags, 6, pc);
 ftrace_trace_userstack(tr->buffer, flags, pc);
}
