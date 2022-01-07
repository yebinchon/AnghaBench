
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct cpu_itimer {scalar_t__ error; scalar_t__ incr_error; int expires; int incr; } ;
typedef int cputime_t ;
struct TYPE_2__ {int leader_pid; } ;


 int ITIMER_PROF ;
 int ITIMER_VIRTUAL ;
 int SEND_SIG_PRIV ;
 int SIGPROF ;
 int __group_send_sig_info (int,int ,struct task_struct*) ;
 int cputime_add (int ,int ) ;
 scalar_t__ cputime_eq (int ,int ) ;
 scalar_t__ cputime_ge (int ,int ) ;
 scalar_t__ cputime_lt (int ,int ) ;
 int cputime_one_jiffy ;
 int cputime_sub (int ,int ) ;
 int cputime_zero ;
 scalar_t__ onecputick ;
 int trace_itimer_expire (int ,int ,int ) ;

__attribute__((used)) static void check_cpu_itimer(struct task_struct *tsk, struct cpu_itimer *it,
        cputime_t *expires, cputime_t cur_time, int signo)
{
 if (cputime_eq(it->expires, cputime_zero))
  return;

 if (cputime_ge(cur_time, it->expires)) {
  if (!cputime_eq(it->incr, cputime_zero)) {
   it->expires = cputime_add(it->expires, it->incr);
   it->error += it->incr_error;
   if (it->error >= onecputick) {
    it->expires = cputime_sub(it->expires,
         cputime_one_jiffy);
    it->error -= onecputick;
   }
  } else {
   it->expires = cputime_zero;
  }

  trace_itimer_expire(signo == SIGPROF ?
        ITIMER_PROF : ITIMER_VIRTUAL,
        tsk->signal->leader_pid, cur_time);
  __group_send_sig_info(signo, SEND_SIG_PRIV, tsk);
 }

 if (!cputime_eq(it->expires, cputime_zero) &&
     (cputime_eq(*expires, cputime_zero) ||
      cputime_lt(it->expires, *expires))) {
  *expires = it->expires;
 }
}
