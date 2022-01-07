
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {int InactTimer; int SetupTimer; } ;
typedef TYPE_1__* PTS_COMMON_INFO ;


 scalar_t__ MSECS (scalar_t__) ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void AdmitTS(struct ieee80211_device *ieee, PTS_COMMON_INFO pTsCommonInfo, u32 InactTime)
{
 del_timer_sync(&pTsCommonInfo->SetupTimer);
 del_timer_sync(&pTsCommonInfo->InactTimer);

 if(InactTime!=0)
  mod_timer(&pTsCommonInfo->InactTimer, jiffies + MSECS(InactTime));
}
