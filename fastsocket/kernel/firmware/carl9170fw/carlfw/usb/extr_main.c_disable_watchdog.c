
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int watchdog_enable; } ;


 int AR9170_PWR_REG_WATCH_DOG_MAGIC ;
 int AR9170_TIMER_REG_WATCH_DOG ;
 int andl (int ,int) ;
 TYPE_1__ fw ;
 int orl (int ,int) ;
 int set (int ,int) ;

__attribute__((used)) static void disable_watchdog(void)
{
 if (!fw.watchdog_enable)
  return;


 andl(AR9170_PWR_REG_WATCH_DOG_MAGIC, 0xffff);
 orl(AR9170_PWR_REG_WATCH_DOG_MAGIC, 0x98760000);


 set(AR9170_TIMER_REG_WATCH_DOG, 0xffff);
}
