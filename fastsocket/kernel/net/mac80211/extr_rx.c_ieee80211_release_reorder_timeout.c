
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_ampdu_rx {int reorder_lock; } ;
struct TYPE_2__ {int * tid_rx; } ;
struct sta_info {int sdata; TYPE_1__ ampdu_mlme; int local; } ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_rx_data {int security_idx; int seqno_idx; int flags; int local; int sdata; struct sta_info* sta; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 int ieee80211_rx_handlers (struct ieee80211_rx_data*,struct sk_buff_head*) ;
 int ieee80211_sta_reorder_release (int ,struct tid_ampdu_rx*,struct sk_buff_head*) ;
 struct tid_ampdu_rx* rcu_dereference (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ieee80211_release_reorder_timeout(struct sta_info *sta, int tid)
{
 struct sk_buff_head frames;
 struct ieee80211_rx_data rx = {
  .sta = sta,
  .sdata = sta->sdata,
  .local = sta->local,

  .security_idx = tid,
  .seqno_idx = tid,
  .flags = 0,
 };
 struct tid_ampdu_rx *tid_agg_rx;

 tid_agg_rx = rcu_dereference(sta->ampdu_mlme.tid_rx[tid]);
 if (!tid_agg_rx)
  return;

 __skb_queue_head_init(&frames);

 spin_lock(&tid_agg_rx->reorder_lock);
 ieee80211_sta_reorder_release(sta->sdata, tid_agg_rx, &frames);
 spin_unlock(&tid_agg_rx->reorder_lock);

 ieee80211_rx_handlers(&rx, &frames);
}
