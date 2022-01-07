
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {int bValid; int Timer; } ;
typedef TYPE_1__* PBA_RECORD ;


 scalar_t__ MSECS (scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void ActivateBAEntry(struct ieee80211_device* ieee, PBA_RECORD pBA, u16 Time)
{
 pBA->bValid = 1;
 if(Time != 0)
  mod_timer(&pBA->Timer, jiffies + MSECS(Time));
}
