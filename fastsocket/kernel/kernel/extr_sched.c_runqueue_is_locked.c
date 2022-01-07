
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 TYPE_1__* cpu_rq (int) ;
 int spin_is_locked (int *) ;

int runqueue_is_locked(int cpu)
{
 return spin_is_locked(&cpu_rq(cpu)->lock);
}
