
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_scheduler {scalar_t__ module; } ;


 int module_put (scalar_t__) ;

void ip_vs_scheduler_put(struct ip_vs_scheduler *scheduler)
{
 if (scheduler && scheduler->module)
  module_put(scheduler->module);
}
