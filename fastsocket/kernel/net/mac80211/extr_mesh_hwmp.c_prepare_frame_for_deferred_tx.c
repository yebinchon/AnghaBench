
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int priority; scalar_t__ data; } ;
struct TYPE_2__ {int * vif; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_hdr {int dummy; } ;


 int IEEE80211_AC_VO ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ;
 int ieee80211_mps_set_frame_flags (struct ieee80211_sub_if_data*,int *,struct ieee80211_hdr*) ;
 int ieee80211_set_qos_hdr (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int skb_set_mac_header (struct sk_buff*,int ) ;
 int skb_set_network_header (struct sk_buff*,int ) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 int skb_set_transport_header (struct sk_buff*,int ) ;

__attribute__((used)) static void prepare_frame_for_deferred_tx(struct ieee80211_sub_if_data *sdata,
  struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;

 skb_set_mac_header(skb, 0);
 skb_set_network_header(skb, 0);
 skb_set_transport_header(skb, 0);


 skb_set_queue_mapping(skb, IEEE80211_AC_VO);
 skb->priority = 7;

 info->control.vif = &sdata->vif;
 info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
 ieee80211_set_qos_hdr(sdata, skb);
 ieee80211_mps_set_frame_flags(sdata, ((void*)0), hdr);
}
