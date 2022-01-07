
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_trace_exit {int nr; int ret; } ;
struct syscall_metadata {int exit_event; int exit_id; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;


 int current ;
 int enabled_exit_syscalls ;
 int filter_current_check_discard (struct ring_buffer*,int ,struct syscall_trace_exit*,struct ring_buffer_event*) ;
 struct syscall_trace_exit* ring_buffer_event_data (struct ring_buffer_event*) ;
 int syscall_get_return_value (int ,struct pt_regs*) ;
 struct syscall_metadata* syscall_nr_to_meta (int) ;
 int test_bit (int,int ) ;
 struct ring_buffer_event* trace_current_buffer_lock_reserve (struct ring_buffer**,int ,int,int ,int ) ;
 int trace_current_buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*,int ,int ) ;
 int trace_get_syscall_nr (int ,struct pt_regs*) ;

void ftrace_syscall_exit(struct pt_regs *regs, long ret)
{
 struct syscall_trace_exit *entry;
 struct syscall_metadata *sys_data;
 struct ring_buffer_event *event;
 struct ring_buffer *buffer;
 int syscall_nr;

 syscall_nr = trace_get_syscall_nr(current, regs);
 if (syscall_nr < 0)
  return;
 if (!test_bit(syscall_nr, enabled_exit_syscalls))
  return;

 sys_data = syscall_nr_to_meta(syscall_nr);
 if (!sys_data)
  return;

 event = trace_current_buffer_lock_reserve(&buffer, sys_data->exit_id,
    sizeof(*entry), 0, 0);
 if (!event)
  return;

 entry = ring_buffer_event_data(event);
 entry->nr = syscall_nr;
 entry->ret = syscall_get_return_value(current, regs);

 if (!filter_current_check_discard(buffer, sys_data->exit_event,
       entry, event))
  trace_current_buffer_unlock_commit(buffer, event, 0, 0);
}
