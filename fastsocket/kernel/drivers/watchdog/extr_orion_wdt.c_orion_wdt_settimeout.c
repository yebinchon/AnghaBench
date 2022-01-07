
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int heartbeat ;
 int wdt_max_duration ;

__attribute__((used)) static int orion_wdt_settimeout(int new_time)
{
 if ((new_time <= 0) || (new_time > wdt_max_duration))
  return -EINVAL;



 heartbeat = new_time;
 return 0;
}
