
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sched_clock_running ;

void sched_clock_init(void)
{
 sched_clock_running = 1;
}
