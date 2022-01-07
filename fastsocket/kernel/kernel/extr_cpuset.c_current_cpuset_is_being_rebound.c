
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpuset_being_rebound ;
 int current ;
 scalar_t__ task_cs (int ) ;

int current_cpuset_is_being_rebound(void)
{
 return task_cs(current) == cpuset_being_rebound;
}
