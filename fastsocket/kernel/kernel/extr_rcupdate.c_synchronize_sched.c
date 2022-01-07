
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_synchronize {int completion; int head; } ;


 int call_rcu_sched (int *,int ) ;
 int init_completion (int *) ;
 scalar_t__ rcu_blocking_is_gp () ;
 int wait_for_completion (int *) ;
 int wakeme_after_rcu ;

void synchronize_sched(void)
{
 struct rcu_synchronize rcu;

 if (rcu_blocking_is_gp())
  return;

 init_completion(&rcu.completion);

 call_rcu_sched(&rcu.head, wakeme_after_rcu);

 wait_for_completion(&rcu.completion);
}
