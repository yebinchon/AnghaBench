
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bdRT2RTAggregation; } ;
struct ieee80211_network {TYPE_1__ bssht; scalar_t__ broadcom_cap_exist; int bssid; scalar_t__ ralink_cap_exist; } ;
struct ieee80211_device {struct ieee80211_network current_network; } ;
struct TYPE_4__ {int bHalfNMode; } ;


 int AIRLINK_RALINK ;
 int BELKINF5D82334V3_RALINK ;
 int BELKINF5D8233V1_RALINK ;
 int EDIMAX_RALINK ;
 int LINKSYSWRT330_LINKSYSWRT300_BROADCOM ;
 int LINKSYSWRT350_LINKSYSWRT150_BROADCOM ;
 int NETGEAR834Bv2_BROADCOM ;
 int PCI_RALINK ;
 int UNKNOWN_BORADCOM ;
 scalar_t__ memcmp (int ,int ,int) ;
 TYPE_2__* pMgntInfo ;

bool IsHTHalfNmodeAPs(struct ieee80211_device* ieee)
{
 bool retValue = 0;
 struct ieee80211_network* net = &ieee->current_network;





 if((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3)==0) ||
       (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3)==0) ||
       (memcmp(net->bssid, PCI_RALINK, 3)==0) ||
       (memcmp(net->bssid, EDIMAX_RALINK, 3)==0) ||
       (memcmp(net->bssid, AIRLINK_RALINK, 3)==0) ||
       (net->ralink_cap_exist))
  retValue = 1;
 else if((memcmp(net->bssid, UNKNOWN_BORADCOM, 3)==0) ||
          (memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3)==0)||
          (memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3)==0)||
          (memcmp(net->bssid, NETGEAR834Bv2_BROADCOM, 3)==0) ||
          (net->broadcom_cap_exist))
        retValue = 1;
 else if(net->bssht.bdRT2RTAggregation)
  retValue = 1;
 else
  retValue = 0;

 return retValue;
}
