
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewma {scalar_t__ internal; void* factor; void* weight; } ;


 int WARN_ON (int) ;
 void* ilog2 (unsigned long) ;
 int is_power_of_2 (unsigned long) ;

void ewma_init(struct ewma *avg, unsigned long factor, unsigned long weight)
{
 WARN_ON(!is_power_of_2(weight) || !is_power_of_2(factor));

 avg->weight = ilog2(weight);
 avg->factor = ilog2(factor);
 avg->internal = 0;
}
