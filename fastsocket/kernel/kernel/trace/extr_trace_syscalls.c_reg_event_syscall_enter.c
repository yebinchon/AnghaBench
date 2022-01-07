
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_metadata {char* name; } ;
struct ftrace_event_call {scalar_t__ data; } ;


 int ENOSYS ;
 int NR_syscalls ;
 int enabled_enter_syscalls ;
 int ftrace_syscall_enter ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_trace_sys_enter (int ) ;
 int set_bit (int,int ) ;
 int sys_refcount_enter ;
 int syscall_name_to_nr (char const*) ;
 int syscall_trace_lock ;

int reg_event_syscall_enter(struct ftrace_event_call *call)
{
 int ret = 0;
 int num;
 const char *name;

 name = ((struct syscall_metadata *)call->data)->name;
 num = syscall_name_to_nr(name);
 if (num < 0 || num >= NR_syscalls)
  return -ENOSYS;
 mutex_lock(&syscall_trace_lock);
 if (!sys_refcount_enter)
  ret = register_trace_sys_enter(ftrace_syscall_enter);
 if (!ret) {
  set_bit(num, enabled_enter_syscalls);
  sys_refcount_enter++;
 }
 mutex_unlock(&syscall_trace_lock);
 return ret;
}
