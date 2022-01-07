
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union cpu_time_count {scalar_t__ sched; } ;
struct task_struct {int exit_state; int * signal; } ;
struct TYPE_4__ {union cpu_time_count expires; union cpu_time_count incr; struct task_struct* task; } ;
struct TYPE_5__ {TYPE_1__ cpu; } ;
struct k_itimer {int it_sigev_notify; TYPE_2__ it; int it_clock; } ;
struct TYPE_6__ {int tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_3__ it_value; TYPE_3__ it_interval; } ;


 scalar_t__ CPUCLOCK_PERTHREAD (int ) ;
 int SIGEV_NONE ;
 int SIGEV_THREAD_ID ;
 int bump_cpu_timer (struct k_itimer*,union cpu_time_count) ;
 int clear_dead_task (struct k_itimer*,union cpu_time_count) ;
 int cpu_clock_sample (int ,struct task_struct*,union cpu_time_count*) ;
 scalar_t__ cpu_time_before (int ,union cpu_time_count,union cpu_time_count) ;
 union cpu_time_count cpu_time_sub (int ,union cpu_time_count,union cpu_time_count) ;
 int cpu_timer_sample_group (int ,struct task_struct*,union cpu_time_count*) ;
 int put_task_struct (struct task_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sample_to_timespec (int ,union cpu_time_count,TYPE_3__*) ;
 int tasklist_lock ;
 scalar_t__ thread_group_empty (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void posix_cpu_timer_get(struct k_itimer *timer, struct itimerspec *itp)
{
 union cpu_time_count now;
 struct task_struct *p = timer->it.cpu.task;
 int clear_dead;




 sample_to_timespec(timer->it_clock,
      timer->it.cpu.incr, &itp->it_interval);

 if (timer->it.cpu.expires.sched == 0) {
  itp->it_value.tv_sec = itp->it_value.tv_nsec = 0;
  return;
 }

 if (unlikely(p == ((void*)0))) {




 dead:
  sample_to_timespec(timer->it_clock, timer->it.cpu.expires,
       &itp->it_value);
  return;
 }




 if (CPUCLOCK_PERTHREAD(timer->it_clock)) {
  cpu_clock_sample(timer->it_clock, p, &now);
  clear_dead = p->exit_state;
 } else {
  read_lock(&tasklist_lock);
  if (unlikely(p->signal == ((void*)0))) {





   put_task_struct(p);
   timer->it.cpu.task = ((void*)0);
   timer->it.cpu.expires.sched = 0;
   read_unlock(&tasklist_lock);
   goto dead;
  } else {
   cpu_timer_sample_group(timer->it_clock, p, &now);
   clear_dead = (unlikely(p->exit_state) &&
          thread_group_empty(p));
  }
  read_unlock(&tasklist_lock);
 }

 if ((timer->it_sigev_notify & ~SIGEV_THREAD_ID) == SIGEV_NONE) {
  if (timer->it.cpu.incr.sched == 0 &&
      cpu_time_before(timer->it_clock,
        timer->it.cpu.expires, now)) {




   timer->it.cpu.expires.sched = 0;
   itp->it_value.tv_sec = itp->it_value.tv_nsec = 0;
   return;
  }




  bump_cpu_timer(timer, now);
 }

 if (unlikely(clear_dead)) {





  clear_dead_task(timer, now);
  goto dead;
 }

 if (cpu_time_before(timer->it_clock, now, timer->it.cpu.expires)) {
  sample_to_timespec(timer->it_clock,
       cpu_time_sub(timer->it_clock,
      timer->it.cpu.expires, now),
       &itp->it_value);
 } else {




  itp->it_value.tv_nsec = 1;
  itp->it_value.tv_sec = 0;
 }
}
