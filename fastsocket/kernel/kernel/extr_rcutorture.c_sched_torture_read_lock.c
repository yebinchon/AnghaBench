
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_disable () ;

__attribute__((used)) static int sched_torture_read_lock(void)
{
 preempt_disable();
 return 0;
}
