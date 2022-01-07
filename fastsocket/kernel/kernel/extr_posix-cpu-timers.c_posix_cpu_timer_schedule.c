
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union cpu_time_count {int dummy; } cpu_time_count ;
struct task_struct {int exit_state; int * signal; } ;
struct TYPE_4__ {scalar_t__ sched; } ;
struct TYPE_5__ {TYPE_1__ expires; struct task_struct* task; } ;
struct TYPE_6__ {TYPE_2__ cpu; } ;
struct k_itimer {int it_overrun_last; int it_overrun; int it_requeue_pending; int it_clock; TYPE_3__ it; } ;


 scalar_t__ CPUCLOCK_PERTHREAD (int ) ;
 int arm_timer (struct k_itimer*,union cpu_time_count) ;
 int bump_cpu_timer (struct k_itimer*,union cpu_time_count) ;
 int clear_dead_task (struct k_itimer*,union cpu_time_count) ;
 int cpu_clock_sample (int ,struct task_struct*,union cpu_time_count*) ;
 int cpu_timer_sample_group (int ,struct task_struct*,union cpu_time_count*) ;
 int put_task_struct (struct task_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int tasklist_lock ;
 scalar_t__ thread_group_empty (struct task_struct*) ;
 scalar_t__ unlikely (int ) ;

void posix_cpu_timer_schedule(struct k_itimer *timer)
{
 struct task_struct *p = timer->it.cpu.task;
 union cpu_time_count now;

 if (unlikely(p == ((void*)0)))



  goto out;




 if (CPUCLOCK_PERTHREAD(timer->it_clock)) {
  cpu_clock_sample(timer->it_clock, p, &now);
  bump_cpu_timer(timer, now);
  if (unlikely(p->exit_state)) {
   clear_dead_task(timer, now);
   goto out;
  }
  read_lock(&tasklist_lock);
 } else {
  read_lock(&tasklist_lock);
  if (unlikely(p->signal == ((void*)0))) {




   put_task_struct(p);
   timer->it.cpu.task = p = ((void*)0);
   timer->it.cpu.expires.sched = 0;
   goto out_unlock;
  } else if (unlikely(p->exit_state) && thread_group_empty(p)) {





   clear_dead_task(timer, now);
   goto out_unlock;
  }
  cpu_timer_sample_group(timer->it_clock, p, &now);
  bump_cpu_timer(timer, now);

 }




 arm_timer(timer, now);

out_unlock:
 read_unlock(&tasklist_lock);

out:
 timer->it_overrun_last = timer->it_overrun;
 timer->it_overrun = -1;
 ++timer->it_requeue_pending;
}
