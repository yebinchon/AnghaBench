
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _rcu_barrier (int *,int ) ;
 int call_rcu_sched ;
 int rcu_sched_state ;

void rcu_barrier_sched(void)
{
 _rcu_barrier(&rcu_sched_state, call_rcu_sched);
}
