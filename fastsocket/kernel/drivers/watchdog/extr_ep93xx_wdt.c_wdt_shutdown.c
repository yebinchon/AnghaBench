
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer_sync (int *) ;
 int timer ;
 int wdt_disable () ;

__attribute__((used)) static void wdt_shutdown(void)
{
 del_timer_sync(&timer);
 wdt_disable();
}
