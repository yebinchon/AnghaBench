
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ idle; } ;


 scalar_t__ cpu_curr (int) ;
 TYPE_1__* cpu_rq (int) ;

int idle_cpu(int cpu)
{
 return cpu_curr(cpu) == cpu_rq(cpu)->idle;
}
