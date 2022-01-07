
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_pspoll {int frame_control; } ;
struct ieee80211_local {int hw; } ;
struct TYPE_2__ {int flags; } ;


 int IEEE80211_FCTL_PM ;
 TYPE_1__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* ieee80211_pspoll_get (int *,int *) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;

void ieee80211_send_pspoll(struct ieee80211_local *local,
      struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_pspoll *pspoll;
 struct sk_buff *skb;

 skb = ieee80211_pspoll_get(&local->hw, &sdata->vif);
 if (!skb)
  return;

 pspoll = (struct ieee80211_pspoll *) skb->data;
 pspoll->frame_control |= cpu_to_le16(IEEE80211_FCTL_PM);

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;
 ieee80211_tx_skb(sdata, skb);
}
