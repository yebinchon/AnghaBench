
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct task_cputime {int utime; int stime; } ;
struct itimerval {int it_interval; int it_value; } ;
struct cpu_itimer {int incr; int expires; } ;
typedef int cputime_t ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {struct cpu_itimer* it; } ;


 unsigned int CPUCLOCK_PROF ;
 int cputime_add (int ,int ) ;
 int cputime_eq (int ,int ) ;
 scalar_t__ cputime_le (int ,int ) ;
 int cputime_one_jiffy ;
 int cputime_sub (int ,int ) ;
 int cputime_to_timeval (int ,int *) ;
 int cputime_zero ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int thread_group_cputimer (struct task_struct*,struct task_cputime*) ;

__attribute__((used)) static void get_cpu_itimer(struct task_struct *tsk, unsigned int clock_id,
      struct itimerval *const value)
{
 cputime_t cval, cinterval;
 struct cpu_itimer *it = &tsk->signal->it[clock_id];

 spin_lock_irq(&tsk->sighand->siglock);

 cval = it->expires;
 cinterval = it->incr;
 if (!cputime_eq(cval, cputime_zero)) {
  struct task_cputime cputime;
  cputime_t t;

  thread_group_cputimer(tsk, &cputime);
  if (clock_id == CPUCLOCK_PROF)
   t = cputime_add(cputime.utime, cputime.stime);
  else

   t = cputime.utime;

  if (cputime_le(cval, t))

   cval = cputime_one_jiffy;
  else
   cval = cputime_sub(cval, t);
 }

 spin_unlock_irq(&tsk->sighand->siglock);

 cputime_to_timeval(cval, &value->it_value);
 cputime_to_timeval(cinterval, &value->it_interval);
}
