
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ weight; } ;
struct sched_entity {TYPE_1__ load; } ;


 scalar_t__ NICE_0_LOAD ;
 unsigned long calc_delta_mine (unsigned long,scalar_t__,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned long
calc_delta_fair(unsigned long delta, struct sched_entity *se)
{
 if (unlikely(se->load.weight != NICE_0_LOAD))
  delta = calc_delta_mine(delta, NICE_0_LOAD, &se->load);

 return delta;
}
