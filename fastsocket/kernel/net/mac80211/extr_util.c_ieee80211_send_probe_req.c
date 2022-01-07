
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_channel {int band; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* IEEE80211_SKB_CB (struct sk_buff*) ;
 struct sk_buff* ieee80211_build_probe_req (struct ieee80211_sub_if_data*,int *,int ,struct ieee80211_channel*,int const*,size_t,int const*,size_t,int) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_tx_skb_tid_band (struct ieee80211_sub_if_data*,struct sk_buff*,int,int ) ;

void ieee80211_send_probe_req(struct ieee80211_sub_if_data *sdata, u8 *dst,
         const u8 *ssid, size_t ssid_len,
         const u8 *ie, size_t ie_len,
         u32 ratemask, bool directed, u32 tx_flags,
         struct ieee80211_channel *channel, bool scan)
{
 struct sk_buff *skb;

 skb = ieee80211_build_probe_req(sdata, dst, ratemask, channel,
     ssid, ssid_len,
     ie, ie_len, directed);
 if (skb) {
  IEEE80211_SKB_CB(skb)->flags |= tx_flags;
  if (scan)
   ieee80211_tx_skb_tid_band(sdata, skb, 7, channel->band);
  else
   ieee80211_tx_skb(sdata, skb);
 }
}
