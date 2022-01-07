
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
struct pid {int dummy; } ;
struct kvm_vcpu {int pid; } ;


 int PF_VCPU ;
 int PIDTYPE_PID ;
 struct task_struct* get_pid_task (int ,int ) ;
 int put_task_struct (struct task_struct*) ;
 struct pid* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int yield_to (struct task_struct*,int) ;

bool kvm_vcpu_yield_to(struct kvm_vcpu *target)
{
 struct pid *pid;
 struct task_struct *task = ((void*)0);
 bool ret = 0;

 rcu_read_lock();
 pid = rcu_dereference(target->pid);
 if (pid)
  task = get_pid_task(target->pid, PIDTYPE_PID);
 rcu_read_unlock();
 if (!task)
  return ret;
 if (task->flags & PF_VCPU) {
  put_task_struct(task);
  return ret;
 }
 ret = yield_to(task, 1);
 put_task_struct(task);

 return ret;
}
