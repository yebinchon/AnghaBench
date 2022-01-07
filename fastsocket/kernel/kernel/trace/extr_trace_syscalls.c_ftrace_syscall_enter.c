
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_trace_enter {int nr; int args; } ;
struct syscall_metadata {int nb_args; int enter_event; int enter_id; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;


 int current ;
 int enabled_enter_syscalls ;
 int filter_current_check_discard (struct ring_buffer*,int ,struct syscall_trace_enter*,struct ring_buffer_event*) ;
 struct syscall_trace_enter* ring_buffer_event_data (struct ring_buffer_event*) ;
 int syscall_get_arguments (int ,struct pt_regs*,int ,int,int ) ;
 struct syscall_metadata* syscall_nr_to_meta (int) ;
 int test_bit (int,int ) ;
 struct ring_buffer_event* trace_current_buffer_lock_reserve (struct ring_buffer**,int ,int,int ,int ) ;
 int trace_current_buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*,int ,int ) ;
 int trace_get_syscall_nr (int ,struct pt_regs*) ;

void ftrace_syscall_enter(struct pt_regs *regs, long id)
{
 struct syscall_trace_enter *entry;
 struct syscall_metadata *sys_data;
 struct ring_buffer_event *event;
 struct ring_buffer *buffer;
 int syscall_nr;
 int size;

 syscall_nr = trace_get_syscall_nr(current, regs);
 if (syscall_nr < 0)
  return;
 if (!test_bit(syscall_nr, enabled_enter_syscalls))
  return;

 sys_data = syscall_nr_to_meta(syscall_nr);
 if (!sys_data)
  return;

 size = sizeof(*entry) + sizeof(unsigned long) * sys_data->nb_args;

 event = trace_current_buffer_lock_reserve(&buffer, sys_data->enter_id,
        size, 0, 0);
 if (!event)
  return;

 entry = ring_buffer_event_data(event);
 entry->nr = syscall_nr;
 syscall_get_arguments(current, regs, 0, sys_data->nb_args, entry->args);

 if (!filter_current_check_discard(buffer, sys_data->enter_event,
       entry, event))
  trace_current_buffer_unlock_commit(buffer, event, 0, 0);
}
