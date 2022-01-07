
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int priority; int dev; } ;
struct ieee80211_sub_if_data {int dev; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int ieee80211_xmit (struct ieee80211_sub_if_data*,struct sk_buff*,int) ;
 int* ieee802_1d_to_ac ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int skb_set_mac_header (struct sk_buff*,int ) ;
 int skb_set_network_header (struct sk_buff*,int ) ;
 int skb_set_queue_mapping (struct sk_buff*,int) ;
 int skb_set_transport_header (struct sk_buff*,int ) ;

void __ieee80211_tx_skb_tid_band(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb, int tid,
     enum ieee80211_band band)
{
 int ac = ieee802_1d_to_ac[tid & 7];

 skb_set_mac_header(skb, 0);
 skb_set_network_header(skb, 0);
 skb_set_transport_header(skb, 0);

 skb_set_queue_mapping(skb, ac);
 skb->priority = tid;

 skb->dev = sdata->dev;






 local_bh_disable();
 ieee80211_xmit(sdata, skb, band);
 local_bh_enable();
}
