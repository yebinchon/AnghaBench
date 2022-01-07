
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct trace_array {TYPE_1__** data; struct ring_buffer* buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct hw_branch_entry {void* to; void* from; TYPE_2__ ent; } ;
struct ftrace_event_call {int dummy; } ;
struct TYPE_3__ {int disabled; } ;


 int TRACE_HW_BRANCHES ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 struct ftrace_event_call event_hw_branch ;
 int filter_check_discard (struct ftrace_event_call*,struct hw_branch_entry*,struct ring_buffer*,struct ring_buffer_event*) ;
 struct trace_array* hw_branch_trace ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int raw_smp_processor_id () ;
 struct hw_branch_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* trace_buffer_lock_reserve (struct ring_buffer*,int ,int,int ,int ) ;
 int trace_buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*,int ,int ) ;
 int trace_hw_branches_enabled ;
 int tracing_generic_entry_update (TYPE_2__*,int ,void*) ;
 scalar_t__ unlikely (int) ;

void trace_hw_branch(u64 from, u64 to)
{
 struct ftrace_event_call *call = &event_hw_branch;
 struct trace_array *tr = hw_branch_trace;
 struct ring_buffer_event *event;
 struct ring_buffer *buf;
 struct hw_branch_entry *entry;
 unsigned long irq1;
 int cpu;

 if (unlikely(!tr))
  return;

 if (unlikely(!trace_hw_branches_enabled))
  return;

 local_irq_save(irq1);
 cpu = raw_smp_processor_id();
 if (atomic_inc_return(&tr->data[cpu]->disabled) != 1)
  goto out;

 buf = tr->buffer;
 event = trace_buffer_lock_reserve(buf, TRACE_HW_BRANCHES,
       sizeof(*entry), 0, 0);
 if (!event)
  goto out;
 entry = ring_buffer_event_data(event);
 tracing_generic_entry_update(&entry->ent, 0, from);
 entry->ent.type = TRACE_HW_BRANCHES;
 entry->from = from;
 entry->to = to;
 if (!filter_check_discard(call, entry, buf, event))
  trace_buffer_unlock_commit(buf, event, 0, 0);

 out:
 atomic_dec(&tr->data[cpu]->disabled);
 local_irq_restore(irq1);
}
