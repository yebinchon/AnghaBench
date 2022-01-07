
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_device {int dev; scalar_t__ (* is_ap_in_wep_tkip ) (int ) ;TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ IOTPeer; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;


 int Adapter ;
 int BELKINF5D8233V1_RALINK ;
 int EDIMAX_RALINK ;
 scalar_t__ HT_IOT_PEER_ATHEROS ;
 scalar_t__ HT_IOT_PEER_MARVELL ;
 scalar_t__ HT_IOT_PEER_UNKNOWN ;
 scalar_t__ IS_UNDER_11N_AES_MODE (int ) ;
 int PCI_RALINK ;
 int PeerMacAddr ;
 scalar_t__ PlatformCompareMemory (int ,int ,int) ;
 scalar_t__ stub1 (int ) ;

bool HTIOTActIsDisableMCSTwoSpatialStream(struct ieee80211_device* ieee)
{
 bool retValue = 0;
       PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 if(ieee->is_ap_in_wep_tkip && ieee->is_ap_in_wep_tkip(ieee->dev))
 {
  if( (pHTInfo->IOTPeer != HT_IOT_PEER_ATHEROS) &&
      (pHTInfo->IOTPeer != HT_IOT_PEER_UNKNOWN) &&
      (pHTInfo->IOTPeer != HT_IOT_PEER_MARVELL) )
   retValue = 1;
 }

 return retValue;
}
