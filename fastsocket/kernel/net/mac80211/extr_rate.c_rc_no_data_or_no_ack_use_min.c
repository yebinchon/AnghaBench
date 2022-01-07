
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_rate_control {struct sk_buff* skb; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_CTL_USE_MINRATE ;
 int ieee80211_is_data (int ) ;

__attribute__((used)) static bool rc_no_data_or_no_ack_use_min(struct ieee80211_tx_rate_control *txrc)
{
 struct sk_buff *skb = txrc->skb;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 __le16 fc;

 fc = hdr->frame_control;

 return (info->flags & (IEEE80211_TX_CTL_NO_ACK |
          IEEE80211_TX_CTL_USE_MINRATE)) ||
  !ieee80211_is_data(fc);
}
