
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_metadata {char* name; } ;
struct ftrace_event_call {scalar_t__ data; } ;


 int NR_syscalls ;
 int clear_bit (int,int ) ;
 int enabled_exit_syscalls ;
 int ftrace_syscall_exit ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sys_refcount_exit ;
 int syscall_name_to_nr (char const*) ;
 int syscall_trace_lock ;
 int unregister_trace_sys_exit (int ) ;

void unreg_event_syscall_exit(struct ftrace_event_call *call)
{
 int num;
 const char *name;

 name = ((struct syscall_metadata *)call->data)->name;
 num = syscall_name_to_nr(name);
 if (num < 0 || num >= NR_syscalls)
  return;
 mutex_lock(&syscall_trace_lock);
 sys_refcount_exit--;
 clear_bit(num, enabled_exit_syscalls);
 if (!sys_refcount_exit)
  unregister_trace_sys_exit(ftrace_syscall_exit);
 mutex_unlock(&syscall_trace_lock);
}
