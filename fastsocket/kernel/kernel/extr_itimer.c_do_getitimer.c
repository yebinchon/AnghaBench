
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_1__* sighand; TYPE_2__* signal; } ;
struct itimerval {int it_interval; int it_value; } ;
struct TYPE_4__ {int it_real_incr; int real_timer; } ;
struct TYPE_3__ {int siglock; } ;


 int CPUCLOCK_PROF ;
 int CPUCLOCK_VIRT ;
 int EINVAL ;



 struct task_struct* current ;
 int get_cpu_itimer (struct task_struct*,int ,struct itimerval*) ;
 int itimer_get_remtime (int *) ;
 int ktime_to_timeval (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int do_getitimer(int which, struct itimerval *value)
{
 struct task_struct *tsk = current;

 switch (which) {
 case 129:
  spin_lock_irq(&tsk->sighand->siglock);
  value->it_value = itimer_get_remtime(&tsk->signal->real_timer);
  value->it_interval =
   ktime_to_timeval(tsk->signal->it_real_incr);
  spin_unlock_irq(&tsk->sighand->siglock);
  break;
 case 128:
  get_cpu_itimer(tsk, CPUCLOCK_VIRT, value);
  break;
 case 130:
  get_cpu_itimer(tsk, CPUCLOCK_PROF, value);
  break;
 default:
  return(-EINVAL);
 }
 return 0;
}
