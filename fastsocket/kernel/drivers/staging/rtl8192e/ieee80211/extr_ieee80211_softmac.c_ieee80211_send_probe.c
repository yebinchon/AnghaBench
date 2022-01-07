
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_probe_rq; } ;
struct ieee80211_device {TYPE_1__ softmac_stats; } ;


 struct sk_buff* ieee80211_probe_req (struct ieee80211_device*) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct ieee80211_device*) ;

void ieee80211_send_probe(struct ieee80211_device *ieee)
{
 struct sk_buff *skb;

 skb = ieee80211_probe_req(ieee);
 if (skb){
  softmac_mgmt_xmit(skb, ieee);
  ieee->softmac_stats.tx_probe_rq++;

 }
}
