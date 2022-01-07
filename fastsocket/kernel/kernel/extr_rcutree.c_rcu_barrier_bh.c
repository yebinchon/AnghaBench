
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _rcu_barrier (int *,int ) ;
 int call_rcu_bh ;
 int rcu_bh_state ;

void rcu_barrier_bh(void)
{
 _rcu_barrier(&rcu_bh_state, call_rcu_bh);
}
