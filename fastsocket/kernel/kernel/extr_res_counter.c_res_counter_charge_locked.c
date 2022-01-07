
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_counter {scalar_t__ usage; scalar_t__ limit; scalar_t__ max_usage; int failcnt; } ;


 int ENOMEM ;

int res_counter_charge_locked(struct res_counter *counter, unsigned long val)
{
 if (counter->usage + val > counter->limit) {
  counter->failcnt++;
  return -ENOMEM;
 }

 counter->usage += val;
 if (counter->usage > counter->max_usage)
  counter->max_usage = counter->usage;
 return 0;
}
