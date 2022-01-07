
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {int dummy; } ;


 int BUG_ON (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_set (int *,int) ;
 int complete (int *) ;
 int in_interrupt () ;
 int init_completion (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int on_each_cpu (int ,void*,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rcu_adopt_orphan_cbs (struct rcu_state*) ;
 int rcu_barrier_completion ;
 int rcu_barrier_cpu_count ;
 int rcu_barrier_func ;
 int rcu_barrier_mutex ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void _rcu_barrier(struct rcu_state *rsp,
    void (*call_rcu_func)(struct rcu_head *head,
            void (*func)(struct rcu_head *head)))
{
 BUG_ON(in_interrupt());

 mutex_lock(&rcu_barrier_mutex);
 init_completion(&rcu_barrier_completion);
 atomic_set(&rcu_barrier_cpu_count, 1);
 preempt_disable();
 rcu_adopt_orphan_cbs(rsp);
 on_each_cpu(rcu_barrier_func, (void *)call_rcu_func, 1);
 preempt_enable();
 if (atomic_dec_and_test(&rcu_barrier_cpu_count))
  complete(&rcu_barrier_completion);
 wait_for_completion(&rcu_barrier_completion);
 mutex_unlock(&rcu_barrier_mutex);
}
