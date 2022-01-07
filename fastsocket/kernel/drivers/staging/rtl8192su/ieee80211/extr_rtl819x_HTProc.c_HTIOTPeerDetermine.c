
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RT2RT_HT_Mode; scalar_t__ bdRT2RTAggregation; } ;
struct ieee80211_network {scalar_t__ marvell_cap_exist; int bssid; scalar_t__ atheros_cap_exist; scalar_t__ ralink_cap_exist; scalar_t__ broadcom_cap_exist; TYPE_1__ bssht; } ;
struct ieee80211_device {struct ieee80211_network current_network; TYPE_2__* pHTInfo; } ;
struct TYPE_4__ {void* IOTPeer; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;


 int AIRLINK_RALINK ;
 int BELKINF5D82334V3_RALINK ;
 int BELKINF5D8233V1_RALINK ;
 int CISCO_BROADCOM ;
 int DLINK_ATHEROS_1 ;
 int DLINK_ATHEROS_2 ;
 int EDIMAX_RALINK ;
 void* HT_IOT_PEER_ATHEROS ;
 void* HT_IOT_PEER_BROADCOM ;
 void* HT_IOT_PEER_CISCO ;
 void* HT_IOT_PEER_MARVELL ;
 void* HT_IOT_PEER_RALINK ;
 void* HT_IOT_PEER_REALTEK ;
 void* HT_IOT_PEER_REALTEK_92SE ;
 void* HT_IOT_PEER_UNKNOWN ;
 int IEEE80211_DEBUG (int ,char*,void*) ;
 int IEEE80211_DL_IOT ;
 int LINKSYSWRT330_LINKSYSWRT300_BROADCOM ;
 int LINKSYSWRT350_LINKSYSWRT150_BROADCOM ;
 int LINKSYS_MARVELL_4400N ;
 int NETGEAR834Bv2_BROADCOM ;
 int PCI_RALINK ;
 int RT_HT_CAP_USE_92SE ;
 int UNKNOWN_BORADCOM ;
 scalar_t__ memcmp (int ,int ,int) ;

void HTIOTPeerDetermine(struct ieee80211_device* ieee)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 struct ieee80211_network* net = &ieee->current_network;

 if(net->bssht.bdRT2RTAggregation){
  pHTInfo->IOTPeer = HT_IOT_PEER_REALTEK;
  if(net->bssht.RT2RT_HT_Mode & RT_HT_CAP_USE_92SE){
   pHTInfo->IOTPeer = HT_IOT_PEER_REALTEK_92SE;
  }
 }
 else if(net->broadcom_cap_exist)
  pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
 else if((memcmp(net->bssid, UNKNOWN_BORADCOM, 3)==0) ||
   (memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3)==0)||
   (memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3)==0)||
   (memcmp(net->bssid, NETGEAR834Bv2_BROADCOM, 3)==0) )
  pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
 else if((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3)==0) ||
   (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3)==0) ||
   (memcmp(net->bssid, PCI_RALINK, 3)==0) ||
   (memcmp(net->bssid, EDIMAX_RALINK, 3)==0) ||
   (memcmp(net->bssid, AIRLINK_RALINK, 3)==0) ||
    net->ralink_cap_exist)
  pHTInfo->IOTPeer = HT_IOT_PEER_RALINK;
 else if((net->atheros_cap_exist )||
  (memcmp(net->bssid, DLINK_ATHEROS_1, 3) == 0)||
  (memcmp(net->bssid, DLINK_ATHEROS_2, 3) == 0))
  pHTInfo->IOTPeer = HT_IOT_PEER_ATHEROS;
 else if(memcmp(net->bssid, CISCO_BROADCOM, 3)==0)
  pHTInfo->IOTPeer = HT_IOT_PEER_CISCO;
 else if ((memcmp(net->bssid, LINKSYS_MARVELL_4400N, 3) == 0) ||
    net->marvell_cap_exist)
  pHTInfo->IOTPeer = HT_IOT_PEER_MARVELL;
 else
  pHTInfo->IOTPeer = HT_IOT_PEER_UNKNOWN;

 IEEE80211_DEBUG(IEEE80211_DL_IOT, "Joseph debug!! IOTPEER: %x\n", pHTInfo->IOTPeer);
}
