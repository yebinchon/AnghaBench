
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int on_each_cpu (int ,int *,int) ;
 int retrigger_next_event ;
 int timerfd_clock_was_set () ;

void clock_was_set(void)
{

 on_each_cpu(retrigger_next_event, ((void*)0), 1);
 timerfd_clock_was_set();
}
