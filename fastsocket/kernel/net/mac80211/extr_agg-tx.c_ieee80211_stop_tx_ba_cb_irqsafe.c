
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int pkt_type; int cb; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int work; int skb_queue; struct ieee80211_local* local; } ;
struct ieee80211_ra_tid {int tid; int ra; } ;
struct ieee80211_local {int hw; } ;


 int ETH_ALEN ;
 int IEEE80211_SDATA_QUEUE_AGG_STOP ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int ieee80211_queue_work (int *,int *) ;
 int memcpy (int *,int const*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_stop_tx_ba_cb_irqsafe(struct ieee80211_vif *vif,
         const u8 *ra, u16 tid)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_ra_tid *ra_tid;
 struct sk_buff *skb = dev_alloc_skb(0);

 if (unlikely(!skb))
  return;

 ra_tid = (struct ieee80211_ra_tid *) &skb->cb;
 memcpy(&ra_tid->ra, ra, ETH_ALEN);
 ra_tid->tid = tid;

 skb->pkt_type = IEEE80211_SDATA_QUEUE_AGG_STOP;
 skb_queue_tail(&sdata->skb_queue, skb);
 ieee80211_queue_work(&local->hw, &sdata->work);
}
