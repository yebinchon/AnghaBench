
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wdrtas_set_interval (int ) ;

__attribute__((used)) static void wdrtas_timer_stop(void)
{
 wdrtas_set_interval(0);
}
