
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_device {TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ IOTPeer; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;


 scalar_t__ HT_IOT_PEER_ATHEROS ;
 scalar_t__ HT_IOT_PEER_BROADCOM ;
 scalar_t__ HT_IOT_PEER_RALINK ;

u8
  HTIOTActIsEDCABiasRx(struct ieee80211_device* ieee,struct ieee80211_network *network)
{
 u8 retValue = 0;

 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 {




  if(pHTInfo->IOTPeer==HT_IOT_PEER_ATHEROS ||
     pHTInfo->IOTPeer==HT_IOT_PEER_BROADCOM ||
     pHTInfo->IOTPeer==HT_IOT_PEER_RALINK)

   return 1;

 }
 return retValue;
}
