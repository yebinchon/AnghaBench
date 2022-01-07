
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; } ;


 int EINVAL ;
 int TIMEOUT_MAX ;
 int TIMEOUT_MIN ;
 TYPE_1__* wdt ;

__attribute__((used)) static int at32_wdt_settimeout(int time)
{




 if ((time < TIMEOUT_MIN) || (time > TIMEOUT_MAX))
  return -EINVAL;





 wdt->timeout = time;
 return 0;
}
