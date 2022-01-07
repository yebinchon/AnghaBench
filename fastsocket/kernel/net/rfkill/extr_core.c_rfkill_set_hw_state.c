
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int uevent_work; int registered; } ;


 int __rfkill_set_hw_state (struct rfkill*,int,int*) ;
 int schedule_work (int *) ;

bool rfkill_set_hw_state(struct rfkill *rfkill, bool blocked)
{
 bool ret, change;

 ret = __rfkill_set_hw_state(rfkill, blocked, &change);

 if (!rfkill->registered)
  return ret;

 if (change)
  schedule_work(&rfkill->uevent_work);

 return ret;
}
