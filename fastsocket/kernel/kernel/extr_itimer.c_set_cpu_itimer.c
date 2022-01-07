
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct itimerval {int it_interval; int it_value; } ;
struct cpu_itimer {void* incr; void* expires; void* error; void* incr_error; } ;
typedef int s64 ;
typedef void* cputime_t ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {struct cpu_itimer* it; } ;


 unsigned int CPUCLOCK_VIRT ;
 int ITIMER_PROF ;
 int ITIMER_VIRTUAL ;
 void* cputime_add (void*,int ) ;
 int cputime_eq (void*,int ) ;
 scalar_t__ cputime_gt (void*,int ) ;
 int cputime_one_jiffy ;
 void* cputime_sub_ns (void*,int ) ;
 int cputime_to_timeval (void*,int *) ;
 int cputime_zero ;
 int set_process_cpu_timer (struct task_struct*,unsigned int,void**,void**) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 void* timeval_to_cputime (int *) ;
 int timeval_to_ns (int *) ;
 int trace_itimer_state (int ,struct itimerval const* const,void*) ;

__attribute__((used)) static void set_cpu_itimer(struct task_struct *tsk, unsigned int clock_id,
      const struct itimerval *const value,
      struct itimerval *const ovalue)
{
 cputime_t cval, nval, cinterval, ninterval;
 s64 ns_ninterval, ns_nval;
 struct cpu_itimer *it = &tsk->signal->it[clock_id];

 nval = timeval_to_cputime(&value->it_value);
 ns_nval = timeval_to_ns(&value->it_value);
 ninterval = timeval_to_cputime(&value->it_interval);
 ns_ninterval = timeval_to_ns(&value->it_interval);

 it->incr_error = cputime_sub_ns(ninterval, ns_ninterval);
 it->error = cputime_sub_ns(nval, ns_nval);

 spin_lock_irq(&tsk->sighand->siglock);

 cval = it->expires;
 cinterval = it->incr;
 if (!cputime_eq(cval, cputime_zero) ||
     !cputime_eq(nval, cputime_zero)) {
  if (cputime_gt(nval, cputime_zero))
   nval = cputime_add(nval, cputime_one_jiffy);
  set_process_cpu_timer(tsk, clock_id, &nval, &cval);
 }
 it->expires = nval;
 it->incr = ninterval;
 trace_itimer_state(clock_id == CPUCLOCK_VIRT ?
      ITIMER_VIRTUAL : ITIMER_PROF, value, nval);

 spin_unlock_irq(&tsk->sighand->siglock);

 if (ovalue) {
  cputime_to_timeval(cval, &ovalue->it_value);
  cputime_to_timeval(cinterval, &ovalue->it_interval);
 }
}
