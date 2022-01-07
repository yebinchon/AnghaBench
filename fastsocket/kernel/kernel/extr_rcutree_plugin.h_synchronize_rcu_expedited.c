
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int synchronize_sched_expedited () ;

void synchronize_rcu_expedited(void)
{
 synchronize_sched_expedited();
}
