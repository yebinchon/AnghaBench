
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rcu_barrier_sched () ;

void rcu_barrier(void)
{
 rcu_barrier_sched();
}
