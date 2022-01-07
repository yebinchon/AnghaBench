
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int stime; } ;
struct thread_group_cputimer {int lock; TYPE_2__ cputime; int running; } ;
struct task_struct {TYPE_1__* signal; int exit_state; } ;
typedef int cputime_t ;
struct TYPE_3__ {struct thread_group_cputimer cputimer; } ;


 int cputime_add (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void account_group_system_time(struct task_struct *tsk,
          cputime_t cputime)
{
 struct thread_group_cputimer *cputimer;


 if (unlikely(tsk->exit_state))
  return;

 cputimer = &tsk->signal->cputimer;

 if (!cputimer->running)
  return;

 spin_lock(&cputimer->lock);
 cputimer->cputime.stime =
  cputime_add(cputimer->cputime.stime, cputime);
 spin_unlock(&cputimer->lock);
}
