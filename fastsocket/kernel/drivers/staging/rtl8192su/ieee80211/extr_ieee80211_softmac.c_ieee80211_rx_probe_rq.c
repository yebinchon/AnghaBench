
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_probe_rs; int rx_probe_rq; } ;
struct ieee80211_device {TYPE_1__ softmac_stats; } ;


 int ETH_ALEN ;
 int ieee80211_resp_to_probe (struct ieee80211_device*,int *) ;
 scalar_t__ probe_rq_parse (struct ieee80211_device*,struct sk_buff*,int *) ;

__attribute__((used)) static inline void
ieee80211_rx_probe_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
{
 u8 dest[ETH_ALEN];


 ieee->softmac_stats.rx_probe_rq++;

 if (probe_rq_parse(ieee, skb, dest)){

  ieee->softmac_stats.tx_probe_rs++;
  ieee80211_resp_to_probe(ieee, dest);
 }
}
