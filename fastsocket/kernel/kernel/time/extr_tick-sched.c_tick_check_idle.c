
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tick_check_nohz (int) ;
 int tick_check_oneshot_broadcast (int) ;

void tick_check_idle(int cpu)
{
 tick_check_oneshot_broadcast(cpu);
 tick_check_nohz(cpu);
}
