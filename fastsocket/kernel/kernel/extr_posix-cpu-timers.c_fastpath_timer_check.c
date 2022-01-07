
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sum_exec_runtime; } ;
struct task_struct {struct signal_struct* signal; int cputime_expires; TYPE_1__ se; int stime; int utime; int exit_state; } ;
struct task_cputime {int sum_exec_runtime; int stime; int utime; } ;
struct signal_struct {TYPE_2__* rlim; int cputime_expires; } ;
struct TYPE_4__ {scalar_t__ rlim_cur; } ;


 size_t RLIMIT_CPU ;
 scalar_t__ RLIM_INFINITY ;
 scalar_t__ task_cputime_expired (struct task_cputime*,int *) ;
 int task_cputime_zero (int *) ;
 int thread_group_cputimer (struct task_struct*,struct task_cputime*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int fastpath_timer_check(struct task_struct *tsk)
{
 struct signal_struct *sig;


 if (unlikely(tsk->exit_state))
  return 0;

 if (!task_cputime_zero(&tsk->cputime_expires)) {
  struct task_cputime task_sample = {
   .utime = tsk->utime,
   .stime = tsk->stime,
   .sum_exec_runtime = tsk->se.sum_exec_runtime
  };

  if (task_cputime_expired(&task_sample, &tsk->cputime_expires))
   return 1;
 }

 sig = tsk->signal;
 if (!task_cputime_zero(&sig->cputime_expires)) {
  struct task_cputime group_sample;

  thread_group_cputimer(tsk, &group_sample);
  if (task_cputime_expired(&group_sample, &sig->cputime_expires))
   return 1;
 }

 return sig->rlim[RLIMIT_CPU].rlim_cur != RLIM_INFINITY;
}
