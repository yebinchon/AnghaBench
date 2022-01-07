
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sum_exec_runtime; } ;
struct task_struct {TYPE_1__ se; int stime; int utime; struct signal_struct* signal; } ;
struct signal_struct {scalar_t__ sum_sched_runtime; int stime; int utime; int cpu_timers; } ;


 int cleanup_timers (int ,int ,int ,scalar_t__) ;
 int cputime_add (int ,int ) ;

void posix_cpu_timers_exit_group(struct task_struct *tsk)
{
 struct signal_struct *const sig = tsk->signal;

 cleanup_timers(tsk->signal->cpu_timers,
         cputime_add(tsk->utime, sig->utime),
         cputime_add(tsk->stime, sig->stime),
         tsk->se.sum_exec_runtime + sig->sum_sched_runtime);
}
