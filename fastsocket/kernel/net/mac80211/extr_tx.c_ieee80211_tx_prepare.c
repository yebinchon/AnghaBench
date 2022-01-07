
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct tid_ampdu_tx {int dummy; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_tx_data {int flags; TYPE_9__* sta; struct sk_buff* skb; struct ieee80211_sub_if_data* sdata; int skbs; struct ieee80211_local* local; } ;
struct TYPE_13__ {int sta; } ;
struct TYPE_14__ {TYPE_2__ vlan; } ;
struct TYPE_12__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {scalar_t__ control_port_protocol; TYPE_5__* dev; TYPE_3__ u; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_19__ {int flags; TYPE_7__* wiphy; } ;
struct ieee80211_local {TYPE_8__ hw; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
typedef int ieee80211_tx_result ;
struct TYPE_17__ {int * tid_tx; } ;
struct TYPE_20__ {TYPE_6__ ampdu_mlme; } ;
struct TYPE_18__ {scalar_t__ frag_threshold; } ;
struct TYPE_16__ {TYPE_4__* ieee80211_ptr; } ;
struct TYPE_15__ {scalar_t__ use_4addr; } ;


 scalar_t__ FCS_LEN ;
 int IEEE80211_HW_AMPDU_AGGREGATION ;
 int IEEE80211_HW_TX_AMPDU_SETUP_IN_HW ;
 int IEEE80211_QOS_CTL_TID_MASK ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_CLEAR_PS_FILT ;
 int IEEE80211_TX_CTL_DONTFRAG ;
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ;
 int IEEE80211_TX_CTL_INJECTED ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ;
 int IEEE80211_TX_UNICAST ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 int TX_CONTINUE ;
 int TX_DROP ;
 int TX_QUEUED ;
 int WLAN_STA_CLEAR_PS_FILT ;
 int __skb_queue_head_init (int *) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_is_qos_nullfunc (int ) ;
 int ieee80211_tx_prep_agg (struct ieee80211_tx_data*,struct sk_buff*,struct ieee80211_tx_info*,struct tid_ampdu_tx*,int) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int memset (struct ieee80211_tx_data*,int ,int) ;
 void* rcu_dereference (int ) ;
 TYPE_9__* sta_info_get (struct ieee80211_sub_if_data*,int ) ;
 TYPE_9__* sta_info_get_bss (struct ieee80211_sub_if_data*,int ) ;
 scalar_t__ test_and_clear_sta_flag (TYPE_9__*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ieee80211_tx_result
ieee80211_tx_prepare(struct ieee80211_sub_if_data *sdata,
       struct ieee80211_tx_data *tx,
       struct sk_buff *skb)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_hdr *hdr;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 int tid;
 u8 *qc;

 memset(tx, 0, sizeof(*tx));
 tx->skb = skb;
 tx->local = local;
 tx->sdata = sdata;
 __skb_queue_head_init(&tx->skbs);






 info->flags &= ~IEEE80211_TX_INTFL_NEED_TXPROCESSING;

 hdr = (struct ieee80211_hdr *) skb->data;

 if (sdata->vif.type == NL80211_IFTYPE_AP_VLAN) {
  tx->sta = rcu_dereference(sdata->u.vlan.sta);
  if (!tx->sta && sdata->dev->ieee80211_ptr->use_4addr)
   return TX_DROP;
 } else if (info->flags & IEEE80211_TX_CTL_INJECTED ||
     tx->sdata->control_port_protocol == tx->skb->protocol) {
  tx->sta = sta_info_get_bss(sdata, hdr->addr1);
 }
 if (!tx->sta)
  tx->sta = sta_info_get(sdata, hdr->addr1);

 if (tx->sta && ieee80211_is_data_qos(hdr->frame_control) &&
     !ieee80211_is_qos_nullfunc(hdr->frame_control) &&
     (local->hw.flags & IEEE80211_HW_AMPDU_AGGREGATION) &&
     !(local->hw.flags & IEEE80211_HW_TX_AMPDU_SETUP_IN_HW)) {
  struct tid_ampdu_tx *tid_tx;

  qc = ieee80211_get_qos_ctl(hdr);
  tid = *qc & IEEE80211_QOS_CTL_TID_MASK;

  tid_tx = rcu_dereference(tx->sta->ampdu_mlme.tid_tx[tid]);
  if (tid_tx) {
   bool queued;

   queued = ieee80211_tx_prep_agg(tx, skb, info,
             tid_tx, tid);

   if (unlikely(queued))
    return TX_QUEUED;
  }
 }

 if (is_multicast_ether_addr(hdr->addr1)) {
  tx->flags &= ~IEEE80211_TX_UNICAST;
  info->flags |= IEEE80211_TX_CTL_NO_ACK;
 } else
  tx->flags |= IEEE80211_TX_UNICAST;

 if (!(info->flags & IEEE80211_TX_CTL_DONTFRAG)) {
  if (!(tx->flags & IEEE80211_TX_UNICAST) ||
      skb->len + FCS_LEN <= local->hw.wiphy->frag_threshold ||
      info->flags & IEEE80211_TX_CTL_AMPDU)
   info->flags |= IEEE80211_TX_CTL_DONTFRAG;
 }

 if (!tx->sta)
  info->flags |= IEEE80211_TX_CTL_CLEAR_PS_FILT;
 else if (test_and_clear_sta_flag(tx->sta, WLAN_STA_CLEAR_PS_FILT))
  info->flags |= IEEE80211_TX_CTL_CLEAR_PS_FILT;

 info->flags |= IEEE80211_TX_CTL_FIRST_FRAGMENT;

 return TX_CONTINUE;
}
