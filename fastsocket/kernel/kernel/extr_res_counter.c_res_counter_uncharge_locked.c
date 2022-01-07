
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_counter {unsigned long usage; } ;


 scalar_t__ WARN_ON (int) ;

void res_counter_uncharge_locked(struct res_counter *counter, unsigned long val)
{
 if (WARN_ON(counter->usage < val))
  val = counter->usage;

 counter->usage -= val;
}
