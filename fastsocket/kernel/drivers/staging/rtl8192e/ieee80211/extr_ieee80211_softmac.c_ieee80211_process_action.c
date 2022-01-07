
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int dummy; } ;
struct ieee80211_device {int dummy; } ;


 int ACT_ADDBAREQ ;
 int ACT_ADDBARSP ;

 int ACT_DELBA ;
 int IEEE80211_DEBUG (int ,char*) ;
 int IEEE80211_DL_ERR ;
 int* ieee80211_get_payload (struct ieee80211_hdr*) ;
 int ieee80211_rx_ADDBAReq (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_rx_ADDBARsp (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_rx_DELBA (struct ieee80211_device*,struct sk_buff*) ;

void ieee80211_process_action(struct ieee80211_device* ieee, struct sk_buff* skb)
{
 struct ieee80211_hdr* header = (struct ieee80211_hdr*)skb->data;
 u8* act = ieee80211_get_payload(header);
 u8 tmp = 0;

 if (act == ((void*)0))
 {
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "error to get payload of action frame\n");
  return;
 }
 tmp = *act;
 act ++;
 switch (tmp)
 {
  case 128:
   if (*act == ACT_ADDBAREQ)
   ieee80211_rx_ADDBAReq(ieee, skb);
   else if (*act == ACT_ADDBARSP)
   ieee80211_rx_ADDBARsp(ieee, skb);
   else if (*act == ACT_DELBA)
   ieee80211_rx_DELBA(ieee, skb);
   break;
  default:


   break;
 }
 return;

}
