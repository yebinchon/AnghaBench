
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_device {TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ IOTPeer; int IOTAction; int IOTRaFunc; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;


 int HT_IOT_ACT_AMSDU_ENABLE ;
 scalar_t__ HT_IOT_PEER_RALINK ;
 int HT_IOT_RAFUNC_DISABLE_ALL ;
 int HT_IOT_RAFUNC_PEER_1R ;
 int HT_IOT_RAFUNC_TX_AMSDU ;
 int printk (char*,int ) ;

void
HTIOTActDetermineRaFunc(struct ieee80211_device* ieee, bool bPeerRx2ss)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 pHTInfo->IOTRaFunc &= HT_IOT_RAFUNC_DISABLE_ALL;

 if(pHTInfo->IOTPeer == HT_IOT_PEER_RALINK && !bPeerRx2ss)
  pHTInfo->IOTRaFunc |= HT_IOT_RAFUNC_PEER_1R;

 if(pHTInfo->IOTAction & HT_IOT_ACT_AMSDU_ENABLE)
  pHTInfo->IOTRaFunc |= HT_IOT_RAFUNC_TX_AMSDU;

 printk("!!!!!!!!!!!!!!!!!!!!!!!!!!!IOTRaFunc = %8.8x\n", pHTInfo->IOTRaFunc);
}
