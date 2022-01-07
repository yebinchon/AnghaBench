
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pid {int dummy; } ;
struct kvm_vcpu {int preempt_notifier; struct pid* pid; int mutex; } ;
struct TYPE_5__ {TYPE_1__* pids; } ;
struct TYPE_4__ {struct pid* pid; } ;


 size_t PIDTYPE_PID ;
 TYPE_2__* current ;
 int get_cpu () ;
 struct pid* get_task_pid (TYPE_2__*,size_t) ;
 int kvm_arch_vcpu_load (struct kvm_vcpu*,int) ;
 int mutex_lock (int *) ;
 int preempt_notifier_register (int *) ;
 int put_cpu () ;
 int put_pid (struct pid*) ;
 int rcu_assign_pointer (struct pid*,struct pid*) ;
 int synchronize_rcu () ;
 scalar_t__ unlikely (int) ;

void vcpu_load(struct kvm_vcpu *vcpu)
{
 int cpu;

 mutex_lock(&vcpu->mutex);
 if (unlikely(vcpu->pid != current->pids[PIDTYPE_PID].pid)) {

  struct pid *oldpid = vcpu->pid;
  struct pid *newpid = get_task_pid(current, PIDTYPE_PID);
  rcu_assign_pointer(vcpu->pid, newpid);
  synchronize_rcu();
  put_pid(oldpid);
 }
 cpu = get_cpu();
 preempt_notifier_register(&vcpu->preempt_notifier);
 kvm_arch_vcpu_load(vcpu, cpu);
 put_cpu();
}
