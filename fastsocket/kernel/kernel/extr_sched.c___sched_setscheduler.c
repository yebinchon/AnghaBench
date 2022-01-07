
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int on_rq; } ;
struct task_struct {int sched_reset_on_fork; int policy; scalar_t__ rt_priority; int prio; int pi_lock; struct sched_class* sched_class; TYPE_4__ se; TYPE_2__* signal; scalar_t__ mm; } ;
struct sched_param {scalar_t__ sched_priority; } ;
struct sched_class {int (* set_curr_task ) (struct rq*) ;int (* put_prev_task ) (struct rq*,struct task_struct*) ;} ;
struct rq {struct task_struct* stop; } ;
struct TYPE_9__ {scalar_t__ rt_runtime; } ;
struct TYPE_11__ {TYPE_3__ rt_bandwidth; } ;
struct TYPE_8__ {TYPE_1__* rlim; } ;
struct TYPE_7__ {unsigned long rlim_cur; } ;


 int BUG_ON (int ) ;
 int CAP_SYS_NICE ;
 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 int MAX_RT_PRIO ;
 int MAX_USER_RT_PRIO ;
 size_t RLIMIT_RTPRIO ;
 int SCHED_BATCH ;
 int SCHED_FIFO ;
 int SCHED_IDLE ;
 int SCHED_NORMAL ;
 int SCHED_RESET_ON_FORK ;
 int SCHED_RR ;
 int __setscheduler (struct rq*,struct task_struct*,int,unsigned long) ;
 struct rq* __task_rq_lock (struct task_struct*) ;
 int __task_rq_unlock (struct rq*) ;
 int activate_task (struct rq*,struct task_struct*,int ) ;
 int capable (int ) ;
 int check_class_changed (struct rq*,struct task_struct*,struct sched_class const*,int,int) ;
 int check_same_owner (struct task_struct*) ;
 int deactivate_task (struct rq*,struct task_struct*,int ) ;
 int in_interrupt () ;
 int lock_task_sighand (struct task_struct*,unsigned long*) ;
 scalar_t__ rt_bandwidth_enabled () ;
 int rt_mutex_adjust_pi (struct task_struct*) ;
 int rt_policy (int) ;
 int security_task_setscheduler (struct task_struct*,int,struct sched_param*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rq*,struct task_struct*) ;
 int stub2 (struct rq*) ;
 int task_current (struct rq*,struct task_struct*) ;
 TYPE_5__* task_group (struct task_struct*) ;
 int task_group_is_autogroup (TYPE_5__*) ;
 scalar_t__ unlikely (int) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static int __sched_setscheduler(struct task_struct *p, int policy,
    struct sched_param *param, bool user)
{
 int retval, oldprio, oldpolicy = -1, on_rq, running;
 unsigned long flags;
 const struct sched_class *prev_class;
 struct rq *rq;
 int reset_on_fork;


 BUG_ON(in_interrupt());
recheck:

 if (policy < 0) {
  reset_on_fork = p->sched_reset_on_fork;
  policy = oldpolicy = p->policy;
 } else {
  reset_on_fork = !!(policy & SCHED_RESET_ON_FORK);
  policy &= ~SCHED_RESET_ON_FORK;

  if (policy != SCHED_FIFO && policy != SCHED_RR &&
    policy != SCHED_NORMAL && policy != SCHED_BATCH &&
    policy != SCHED_IDLE)
   return -EINVAL;
 }






 if (param->sched_priority < 0 ||
     (p->mm && param->sched_priority > MAX_USER_RT_PRIO-1) ||
     (!p->mm && param->sched_priority > MAX_RT_PRIO-1))
  return -EINVAL;
 if (rt_policy(policy) != (param->sched_priority != 0))
  return -EINVAL;




 if (user && !capable(CAP_SYS_NICE)) {
  if (rt_policy(policy)) {
   unsigned long rlim_rtprio;

   if (!lock_task_sighand(p, &flags))
    return -ESRCH;
   rlim_rtprio = p->signal->rlim[RLIMIT_RTPRIO].rlim_cur;
   unlock_task_sighand(p, &flags);


   if (policy != p->policy && !rlim_rtprio)
    return -EPERM;


   if (param->sched_priority > p->rt_priority &&
       param->sched_priority > rlim_rtprio)
    return -EPERM;
  }




  if (p->policy == SCHED_IDLE && policy != SCHED_IDLE)
   return -EPERM;


  if (!check_same_owner(p))
   return -EPERM;


  if (p->sched_reset_on_fork && !reset_on_fork)
   return -EPERM;
 }

 if (user) {
  retval = security_task_setscheduler(p, policy, param);
  if (retval)
   return retval;
 }





 spin_lock_irqsave(&p->pi_lock, flags);




 rq = __task_rq_lock(p);




 if (p == rq->stop) {
  __task_rq_unlock(rq);
  spin_unlock_irqrestore(&p->pi_lock, flags);
  return -EINVAL;
 }


 if (unlikely(oldpolicy != -1 && oldpolicy != p->policy)) {
  policy = oldpolicy = -1;
  __task_rq_unlock(rq);
  spin_unlock_irqrestore(&p->pi_lock, flags);
  goto recheck;
 }
 on_rq = p->se.on_rq;
 running = task_current(rq, p);
 if (on_rq)
  deactivate_task(rq, p, 0);
 if (running)
  p->sched_class->put_prev_task(rq, p);

 p->sched_reset_on_fork = reset_on_fork;

 oldprio = p->prio;
 prev_class = p->sched_class;
 __setscheduler(rq, p, policy, param->sched_priority);

 if (running)
  p->sched_class->set_curr_task(rq);
 if (on_rq) {
  activate_task(rq, p, 0);

  check_class_changed(rq, p, prev_class, oldprio, running);
 }
 __task_rq_unlock(rq);
 spin_unlock_irqrestore(&p->pi_lock, flags);

 rt_mutex_adjust_pi(p);

 return 0;
}
