
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fmeter; } ;


 int current ;
 int fmeter_markevent (int *) ;
 TYPE_1__* task_cs (int ) ;
 int task_lock (int ) ;
 int task_unlock (int ) ;

void __cpuset_memory_pressure_bump(void)
{
 task_lock(current);
 fmeter_markevent(&task_cs(current)->fmeter);
 task_unlock(current);
}
