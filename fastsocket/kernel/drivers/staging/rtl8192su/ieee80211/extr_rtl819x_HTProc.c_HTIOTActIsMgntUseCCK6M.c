
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_network {scalar_t__ broadcom_cap_exist; } ;



u8 HTIOTActIsMgntUseCCK6M(struct ieee80211_network *network)
{
 u8 retValue = 0;




 if(network->broadcom_cap_exist)
 {
  retValue = 1;
 }

 return retValue;
}
