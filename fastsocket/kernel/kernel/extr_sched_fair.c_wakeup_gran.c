
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ weight; } ;
struct sched_entity {TYPE_1__ load; } ;


 scalar_t__ NICE_0_LOAD ;
 unsigned long calc_delta_fair (unsigned long,struct sched_entity*) ;
 unsigned long sysctl_sched_wakeup_granularity ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long
wakeup_gran(struct sched_entity *curr, struct sched_entity *se)
{
 unsigned long gran = sysctl_sched_wakeup_granularity;
 if (unlikely(se->load.weight != NICE_0_LOAD))
  gran = calc_delta_fair(gran, se);

 return gran;
}
