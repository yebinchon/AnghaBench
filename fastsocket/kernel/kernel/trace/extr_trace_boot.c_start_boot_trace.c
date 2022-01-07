
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pre_initcalls_finished ;

void start_boot_trace(void)
{
 pre_initcalls_finished = 1;
}
