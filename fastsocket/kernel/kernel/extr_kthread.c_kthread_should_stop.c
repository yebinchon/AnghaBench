
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int should_stop; } ;


 int current ;
 TYPE_1__* to_kthread (int ) ;

int kthread_should_stop(void)
{
 return to_kthread(current)->should_stop;
}
