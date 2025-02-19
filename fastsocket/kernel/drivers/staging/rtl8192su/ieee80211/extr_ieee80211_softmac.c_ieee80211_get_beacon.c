
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int seq_ctl; } ;
struct ieee80211_probe_response {TYPE_1__ header; } ;
struct ieee80211_device {int* seq_ctrl; } ;


 int cpu_to_le16 (int) ;
 struct sk_buff* ieee80211_get_beacon_ (struct ieee80211_device*) ;

struct sk_buff *ieee80211_get_beacon(struct ieee80211_device *ieee)
{
 struct sk_buff *skb;
 struct ieee80211_probe_response *b;

 skb = ieee80211_get_beacon_(ieee);
 if(!skb)
  return ((void*)0);

 b = (struct ieee80211_probe_response *) skb->data;
 b->header.seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4);

 if (ieee->seq_ctrl[0] == 0xFFF)
  ieee->seq_ctrl[0] = 0;
 else
  ieee->seq_ctrl[0]++;

 return skb;
}
