
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long completed; } ;


 TYPE_1__ rcu_sched_state ;

long rcu_batches_completed_sched(void)
{
 return rcu_sched_state.completed;
}
