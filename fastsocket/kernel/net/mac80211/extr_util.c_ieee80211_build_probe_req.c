
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int vif; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {int bssid; int da; } ;
struct ieee80211_local {int hw; } ;
struct ieee80211_channel {int band; int center_freq; } ;
struct TYPE_2__ {int flags; } ;


 int ETH_ALEN ;
 TYPE_1__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 int ieee80211_build_preq_ies (struct ieee80211_local*,int ,int ,scalar_t__ const*,size_t,int ,int ,scalar_t__) ;
 scalar_t__ ieee80211_frequency_to_channel (int ) ;
 struct sk_buff* ieee80211_probereq_get (int *,int *,scalar_t__ const*,size_t,int) ;
 int memcpy (int ,scalar_t__*,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

struct sk_buff *ieee80211_build_probe_req(struct ieee80211_sub_if_data *sdata,
       u8 *dst, u32 ratemask,
       struct ieee80211_channel *chan,
       const u8 *ssid, size_t ssid_len,
       const u8 *ie, size_t ie_len,
       bool directed)
{
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct ieee80211_mgmt *mgmt;
 u8 chan_no;
 int ies_len;






 if (directed)
  chan_no = 0;
 else
  chan_no = ieee80211_frequency_to_channel(chan->center_freq);

 skb = ieee80211_probereq_get(&local->hw, &sdata->vif,
         ssid, ssid_len, 100 + ie_len);
 if (!skb)
  return ((void*)0);

 ies_len = ieee80211_build_preq_ies(local, skb_tail_pointer(skb),
        skb_tailroom(skb),
        ie, ie_len, chan->band,
        ratemask, chan_no);
 skb_put(skb, ies_len);

 if (dst) {
  mgmt = (struct ieee80211_mgmt *) skb->data;
  memcpy(mgmt->da, dst, ETH_ALEN);
  memcpy(mgmt->bssid, dst, ETH_ALEN);
 }

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;

 return skb;
}
