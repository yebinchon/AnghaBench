
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ bdHT1R; } ;
struct ieee80211_network {TYPE_1__ bssht; } ;
struct ieee80211_device {TYPE_2__* pHTInfo; } ;
struct TYPE_4__ {scalar_t__ IOTPeer; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;


 scalar_t__ HT_IOT_PEER_RALINK ;

u8
HTIOTActDisableHighPower(struct ieee80211_device* ieee,struct ieee80211_network *network)
{
 u8 retValue = 0;
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;

 if(pHTInfo->IOTPeer==HT_IOT_PEER_RALINK)
 {
  if(network->bssht.bdHT1R)
   retValue = 1;
 }

 return retValue;
}
