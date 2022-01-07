
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct tid_ampdu_tx {int state; int buf_size; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int mtx; } ;
struct sta_info {int lock; int sdata; TYPE_2__ sta; TYPE_1__ ampdu_mlme; } ;
struct ieee80211_local {int dummy; } ;


 int HT_AGG_STATE_OPERATIONAL ;
 int IEEE80211_AMPDU_TX_OPERATIONAL ;
 int drv_ampdu_action (struct ieee80211_local*,int ,int ,TYPE_2__*,int ,int *,int ) ;
 int ht_dbg (int ,char*,int ,int ) ;
 int ieee80211_agg_splice_finish (int ,int ) ;
 int ieee80211_agg_splice_packets (int ,struct tid_ampdu_tx*,int ) ;
 int lockdep_assert_held (int *) ;
 struct tid_ampdu_tx* rcu_dereference_protected_tid_tx (struct sta_info*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ieee80211_agg_tx_operational(struct ieee80211_local *local,
      struct sta_info *sta, u16 tid)
{
 struct tid_ampdu_tx *tid_tx;

 lockdep_assert_held(&sta->ampdu_mlme.mtx);

 tid_tx = rcu_dereference_protected_tid_tx(sta, tid);

 ht_dbg(sta->sdata, "Aggregation is on for %pM tid %d\n",
        sta->sta.addr, tid);

 drv_ampdu_action(local, sta->sdata,
    IEEE80211_AMPDU_TX_OPERATIONAL,
    &sta->sta, tid, ((void*)0), tid_tx->buf_size);





 spin_lock_bh(&sta->lock);

 ieee80211_agg_splice_packets(sta->sdata, tid_tx, tid);





 set_bit(HT_AGG_STATE_OPERATIONAL, &tid_tx->state);
 ieee80211_agg_splice_finish(sta->sdata, tid);

 spin_unlock_bh(&sta->lock);
}
