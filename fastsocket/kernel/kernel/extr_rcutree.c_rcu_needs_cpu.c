
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nxtlist; } ;


 TYPE_1__ per_cpu (int ,int) ;
 int rcu_bh_data ;
 scalar_t__ rcu_preempt_needs_cpu (int) ;
 int rcu_sched_data ;

int rcu_needs_cpu(int cpu)
{

 return per_cpu(rcu_sched_data, cpu).nxtlist ||
        per_cpu(rcu_bh_data, cpu).nxtlist ||
        rcu_preempt_needs_cpu(cpu);
}
