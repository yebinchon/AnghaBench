
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sum_exec_runtime; } ;
struct task_struct {TYPE_1__ se; int stime; int utime; int cpu_timers; } ;


 int cleanup_timers (int ,int ,int ,int ) ;

void posix_cpu_timers_exit(struct task_struct *tsk)
{
 cleanup_timers(tsk->cpu_timers,
         tsk->utime, tsk->stime, tsk->se.sum_exec_runtime);

}
