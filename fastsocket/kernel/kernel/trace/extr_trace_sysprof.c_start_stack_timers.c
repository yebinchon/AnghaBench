
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int on_each_cpu (int ,int *,int) ;
 int start_stack_timer ;

__attribute__((used)) static void start_stack_timers(void)
{
 on_each_cpu(start_stack_timer, ((void*)0), 1);
}
