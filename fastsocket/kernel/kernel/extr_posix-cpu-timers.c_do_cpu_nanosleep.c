
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_6__ {scalar_t__ sched; } ;
struct TYPE_4__ {TYPE_3__ expires; } ;
struct TYPE_5__ {TYPE_1__ cpu; } ;
struct k_itimer {int it_overrun; struct timespec it_value; int it_lock; TYPE_2__ it; int it_process; int it_clock; } ;
struct itimerspec {int it_overrun; struct timespec it_value; int it_lock; TYPE_2__ it; int it_process; int it_clock; } ;
typedef int clockid_t ;


 int ERESTART_RESTARTBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 int memset (struct k_itimer*,int ,int) ;
 int posix_cpu_timer_create (struct k_itimer*) ;
 int posix_cpu_timer_set (struct k_itimer*,int,struct k_itimer*,struct k_itimer*) ;
 int sample_to_timespec (int const,TYPE_3__,struct timespec*) ;
 int schedule () ;
 int signal_pending (int ) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int do_cpu_nanosleep(const clockid_t which_clock, int flags,
       struct timespec *rqtp, struct itimerspec *it)
{
 struct k_itimer timer;
 int error;




 memset(&timer, 0, sizeof timer);
 spin_lock_init(&timer.it_lock);
 timer.it_clock = which_clock;
 timer.it_overrun = -1;
 error = posix_cpu_timer_create(&timer);
 timer.it_process = current;
 if (!error) {
  static struct itimerspec zero_it;

  memset(it, 0, sizeof *it);
  it->it_value = *rqtp;

  spin_lock_irq(&timer.it_lock);
  error = posix_cpu_timer_set(&timer, flags, it, ((void*)0));
  if (error) {
   spin_unlock_irq(&timer.it_lock);
   return error;
  }

  while (!signal_pending(current)) {
   if (timer.it.cpu.expires.sched == 0) {



    spin_unlock_irq(&timer.it_lock);
    return 0;
   }




   __set_current_state(TASK_INTERRUPTIBLE);
   spin_unlock_irq(&timer.it_lock);
   schedule();
   spin_lock_irq(&timer.it_lock);
  }




  sample_to_timespec(which_clock, timer.it.cpu.expires, rqtp);
  posix_cpu_timer_set(&timer, 0, &zero_it, it);
  spin_unlock_irq(&timer.it_lock);

  if ((it->it_value.tv_sec | it->it_value.tv_nsec) == 0) {



   return 0;
  }

  error = -ERESTART_RESTARTBLOCK;
 }

 return error;
}
