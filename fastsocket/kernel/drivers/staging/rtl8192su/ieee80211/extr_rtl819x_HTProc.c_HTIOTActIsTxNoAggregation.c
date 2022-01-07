
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_device {scalar_t__ pairwise_key_type; scalar_t__ group_key_type; TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ IOTPeer; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;


 scalar_t__ HT_IOT_PEER_REALTEK ;
 scalar_t__ HT_IOT_PEER_UNKNOWN ;
 scalar_t__ KEY_TYPE_TKIP ;
 scalar_t__ KEY_TYPE_WEP104 ;
 scalar_t__ KEY_TYPE_WEP40 ;

u8
HTIOTActIsTxNoAggregation(struct ieee80211_device* ieee,struct ieee80211_network *network)
{
 u8 retValue = 0;

 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 if( (KEY_TYPE_WEP104 == ieee->pairwise_key_type) ||
  (KEY_TYPE_WEP40 == ieee->pairwise_key_type) ||
  (KEY_TYPE_WEP104 == ieee->group_key_type) ||
  (KEY_TYPE_WEP40 == ieee->group_key_type) ||
  (KEY_TYPE_TKIP == ieee->pairwise_key_type) )
 {
  if(pHTInfo->IOTPeer==HT_IOT_PEER_REALTEK ||
      pHTInfo->IOTPeer==HT_IOT_PEER_UNKNOWN)
   retValue = 1;
 }

 return retValue;
}
