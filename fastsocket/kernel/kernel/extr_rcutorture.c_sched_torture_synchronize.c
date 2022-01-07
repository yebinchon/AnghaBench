
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int synchronize_sched () ;

__attribute__((used)) static void sched_torture_synchronize(void)
{
 synchronize_sched();
}
