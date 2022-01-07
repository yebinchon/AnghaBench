
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_cpus_allowed; } ;
struct task_struct {int flags; TYPE_1__ rt; int cpus_allowed; } ;


 int PF_THREAD_BOUND ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON (int) ;
 int cpumask_of_cpu (unsigned int) ;
 int wait_task_inactive (struct task_struct*,int ) ;

void kthread_bind(struct task_struct *p, unsigned int cpu)
{

 if (!wait_task_inactive(p, TASK_UNINTERRUPTIBLE)) {
  WARN_ON(1);
  return;
 }

 p->cpus_allowed = cpumask_of_cpu(cpu);
 p->rt.nr_cpus_allowed = 1;
 p->flags |= PF_THREAD_BOUND;
}
