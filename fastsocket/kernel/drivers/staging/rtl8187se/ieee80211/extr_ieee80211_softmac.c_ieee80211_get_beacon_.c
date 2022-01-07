
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int frame_ctl; } ;
struct ieee80211_probe_response {TYPE_1__ header; } ;
struct ieee80211_device {int dummy; } ;


 int IEEE80211_STYPE_BEACON ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* ieee80211_probe_resp (struct ieee80211_device*,int*) ;

struct sk_buff *ieee80211_get_beacon_(struct ieee80211_device *ieee)
{
 u8 broadcast_addr[] = {0xff,0xff,0xff,0xff,0xff,0xff};

 struct sk_buff *skb = ((void*)0);
 struct ieee80211_probe_response *b;

 skb = ieee80211_probe_resp(ieee, broadcast_addr);
 if (!skb)
  return ((void*)0);

 b = (struct ieee80211_probe_response *) skb->data;
 b->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_BEACON);

 return skb;

}
