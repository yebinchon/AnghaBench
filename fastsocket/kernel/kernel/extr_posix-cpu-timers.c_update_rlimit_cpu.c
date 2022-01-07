
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_1__* sighand; struct signal_struct* signal; } ;
struct signal_struct {TYPE_2__* it; } ;
typedef int cputime_t ;
struct TYPE_4__ {int expires; } ;
struct TYPE_3__ {int siglock; } ;


 size_t CPUCLOCK_PROF ;
 scalar_t__ cputime_eq (int ,int ) ;
 scalar_t__ cputime_gt (int ,int ) ;
 int cputime_zero ;
 int secs_to_cputime (unsigned long) ;
 int set_process_cpu_timer (struct task_struct*,size_t,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void update_rlimit_cpu(struct task_struct *task, unsigned long rlim_new)
{
 cputime_t cputime = secs_to_cputime(rlim_new);
 struct signal_struct *const sig = task->signal;

 if (cputime_eq(sig->it[CPUCLOCK_PROF].expires, cputime_zero) ||
     cputime_gt(sig->it[CPUCLOCK_PROF].expires, cputime)) {
  spin_lock_irq(&task->sighand->siglock);
  set_process_cpu_timer(task, CPUCLOCK_PROF, &cputime, ((void*)0));
  spin_unlock_irq(&task->sighand->siglock);
 }
}
