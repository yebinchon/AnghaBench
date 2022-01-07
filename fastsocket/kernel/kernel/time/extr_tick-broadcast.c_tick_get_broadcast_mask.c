
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int tick_broadcast_mask ;
 struct cpumask* to_cpumask (int ) ;

struct cpumask *tick_get_broadcast_mask(void)
{
 return to_cpumask(tick_broadcast_mask);
}
