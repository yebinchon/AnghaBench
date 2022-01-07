
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_torture {scalar_t__ rtort_mbtest; int rtort_pipe_count; } ;
struct TYPE_2__ {int (* readlock ) () ;int (* completed ) () ;int (* readunlock ) (int) ;int (* read_delay ) (int *) ;} ;
typedef int DEFINE_SPINLOCK ;
typedef int DEFINE_RCU_RANDOM ;


 int RCU_TORTURE_PIPE_LEN ;
 int * __get_cpu_var (int ) ;
 int atomic_inc (int *) ;
 TYPE_1__* cur_ops ;
 int n_rcu_torture_mberror ;
 int n_rcu_torture_timers ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct rcu_torture* rcu_dereference (int ) ;
 int rcu_torture_batch ;
 int rcu_torture_count ;
 int rcu_torture_current ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (int) ;
 int stub4 (int *) ;
 int stub5 () ;
 int stub6 (int) ;

__attribute__((used)) static void rcu_torture_timer(unsigned long unused)
{
 int idx;
 int completed;
 static DEFINE_RCU_RANDOM(rand);
 static DEFINE_SPINLOCK(rand_lock);
 struct rcu_torture *p;
 int pipe_count;

 idx = cur_ops->readlock();
 completed = cur_ops->completed();
 p = rcu_dereference(rcu_torture_current);
 if (p == ((void*)0)) {

  cur_ops->readunlock(idx);
  return;
 }
 if (p->rtort_mbtest == 0)
  atomic_inc(&n_rcu_torture_mberror);
 spin_lock(&rand_lock);
 cur_ops->read_delay(&rand);
 n_rcu_torture_timers++;
 spin_unlock(&rand_lock);
 preempt_disable();
 pipe_count = p->rtort_pipe_count;
 if (pipe_count > RCU_TORTURE_PIPE_LEN) {

  pipe_count = RCU_TORTURE_PIPE_LEN;
 }
 ++__get_cpu_var(rcu_torture_count)[pipe_count];
 completed = cur_ops->completed() - completed;
 if (completed > RCU_TORTURE_PIPE_LEN) {

  completed = RCU_TORTURE_PIPE_LEN;
 }
 ++__get_cpu_var(rcu_torture_batch)[completed];
 preempt_enable();
 cur_ops->readunlock(idx);
}
