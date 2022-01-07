
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long sum_exec_runtime; } ;
struct thread_group_cputimer {int lock; TYPE_1__ cputime; int running; } ;
struct task_struct {struct signal_struct* signal; } ;
struct signal_struct {struct thread_group_cputimer cputimer; } ;


 int barrier () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void account_group_exec_runtime(struct task_struct *tsk,
           unsigned long long ns)
{
 struct thread_group_cputimer *cputimer;
 struct signal_struct *sig;

 sig = tsk->signal;

 barrier();
 if (unlikely(!sig))
  return;

 cputimer = &sig->cputimer;

 if (!cputimer->running)
  return;

 spin_lock(&cputimer->lock);
 cputimer->cputime.sum_exec_runtime += ns;
 spin_unlock(&cputimer->lock);
}
