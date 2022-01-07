
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int WDT_MAX_TIME ;
 int wdt_time ;

__attribute__((used)) static int bcm47xx_wdt_settimeout(int new_time)
{
 if ((new_time <= 0) || (new_time > WDT_MAX_TIME))
  return -EINVAL;

 wdt_time = new_time;
 return 0;
}
