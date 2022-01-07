
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_device {TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ bCurrentHTSupport; } ;


 scalar_t__ Frame_Order (int*) ;
 int IEEE80211_DEBUG (int ,char*) ;
 int IEEE80211_DL_HT ;
 scalar_t__ IsQoSDataFrame (int*) ;

u8 HTCCheck(struct ieee80211_device* ieee, u8* pFrame)
{
 if(ieee->pHTInfo->bCurrentHTSupport)
 {
  if( (IsQoSDataFrame(pFrame) && Frame_Order(pFrame)) == 1)
  {
   IEEE80211_DEBUG(IEEE80211_DL_HT, "HT CONTROL FILED EXIST!!\n");
   return 1;
  }
 }
 return 0;
}
