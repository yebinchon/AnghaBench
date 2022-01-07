
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int watchdog_enable; scalar_t__ reboot; } ;


 int AR9170_TIMER_REG_WATCH_DOG ;
 int AR9170_WATCH_DOG_TIMER ;
 TYPE_1__ fw ;
 int reboot () ;
 int set (int ,int ) ;

__attribute__((used)) static void handle_fw(void)
{
 if (fw.watchdog_enable == 1)
  set(AR9170_TIMER_REG_WATCH_DOG, AR9170_WATCH_DOG_TIMER);

 if (fw.reboot)
  reboot();
}
