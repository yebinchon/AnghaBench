
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siginfo {scalar_t__ si_sys_private; int si_overrun; int si_tid; } ;
struct k_itimer {scalar_t__ it_requeue_pending; scalar_t__ it_clock; scalar_t__ it_overrun_last; } ;


 struct k_itimer* lock_timer (int ,unsigned long*) ;
 int posix_cpu_timer_schedule (struct k_itimer*) ;
 int schedule_next_timer (struct k_itimer*) ;
 int unlock_timer (struct k_itimer*,unsigned long) ;

void do_schedule_next_timer(struct siginfo *info)
{
 struct k_itimer *timr;
 unsigned long flags;

 timr = lock_timer(info->si_tid, &flags);

 if (timr && timr->it_requeue_pending == info->si_sys_private) {
  if (timr->it_clock < 0)
   posix_cpu_timer_schedule(timr);
  else
   schedule_next_timer(timr);

  info->si_overrun += timr->it_overrun_last;
 }

 if (timr)
  unlock_timer(timr, flags);
}
