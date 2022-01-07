
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct sta_info {TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct TYPE_4__ {int * vif; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_hdr {int frame_control; } ;


 int IEEE80211_AC_BK ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_set_qos_hdr (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int mps_dbg (struct ieee80211_sub_if_data*,char*,int ) ;
 struct sk_buff* mps_qos_null_get (struct sta_info*) ;
 struct sk_buff* skb_peek_tail (struct sk_buff_head*) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;

__attribute__((used)) static void mpsp_qos_null_append(struct sta_info *sta,
     struct sk_buff_head *frames)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct sk_buff *new_skb, *skb = skb_peek_tail(frames);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_tx_info *info;

 if (ieee80211_is_data_qos(hdr->frame_control))
  return;

 new_skb = mps_qos_null_get(sta);
 if (!new_skb)
  return;

 mps_dbg(sdata, "appending QoS Null in MPSP towards %pM\n",
  sta->sta.addr);




 new_skb->priority = 1;
 skb_set_queue_mapping(new_skb, IEEE80211_AC_BK);
 ieee80211_set_qos_hdr(sdata, new_skb);

 info = IEEE80211_SKB_CB(new_skb);
 info->control.vif = &sdata->vif;
 info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;

 __skb_queue_tail(frames, new_skb);
}
