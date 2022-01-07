
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calc_global_load () ;
 unsigned long jiffies_64 ;
 int update_wall_time () ;

void do_timer(unsigned long ticks)
{
 jiffies_64 += ticks;
 update_wall_time();
 calc_global_load();
}
