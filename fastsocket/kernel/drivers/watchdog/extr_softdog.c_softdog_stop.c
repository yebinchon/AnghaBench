
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer (int *) ;
 int watchdog_ticktock ;

__attribute__((used)) static int softdog_stop(void)
{
 del_timer(&watchdog_ticktock);
 return 0;
}
