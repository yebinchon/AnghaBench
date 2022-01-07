
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 unsigned long SYS_HALT ;
 unsigned long SYS_POWER_OFF ;
 int nowayout ;
 int scx200_wdt_disable () ;

__attribute__((used)) static int scx200_wdt_notify_sys(struct notifier_block *this,
          unsigned long code, void *unused)
{
 if (code == SYS_HALT || code == SYS_POWER_OFF)
  if (!nowayout)
   scx200_wdt_disable();

 return NOTIFY_DONE;
}
