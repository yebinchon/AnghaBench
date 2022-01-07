
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct ieee80211_rx_status {scalar_t__ vendor_radiotap_len; } ;
struct TYPE_2__ {int flags; } ;
struct ieee80211_local {TYPE_1__ hw; } ;


 scalar_t__ FCS_LEN ;
 int IEEE80211_HW_RX_INCLUDES_FCS ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int WARN_ON (int) ;
 int __pskb_pull (struct sk_buff*,scalar_t__) ;
 int __pskb_trim (struct sk_buff*,scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static struct sk_buff *remove_monitor_info(struct ieee80211_local *local,
        struct sk_buff *skb)
{
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);

 if (local->hw.flags & IEEE80211_HW_RX_INCLUDES_FCS) {
  if (likely(skb->len > FCS_LEN))
   __pskb_trim(skb, skb->len - FCS_LEN);
  else {

   WARN_ON(1);
   dev_kfree_skb(skb);
   return ((void*)0);
  }
 }

 if (status->vendor_radiotap_len)
  __pskb_pull(skb, status->vendor_radiotap_len);

 return skb;
}
