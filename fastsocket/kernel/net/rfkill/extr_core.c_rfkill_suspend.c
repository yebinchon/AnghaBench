
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct device {int dummy; } ;
typedef int pm_message_t ;


 int rfkill_pause_polling (struct rfkill*) ;
 struct rfkill* to_rfkill (struct device*) ;

__attribute__((used)) static int rfkill_suspend(struct device *dev, pm_message_t state)
{
 struct rfkill *rfkill = to_rfkill(dev);

 rfkill_pause_polling(rfkill);

 return 0;
}
