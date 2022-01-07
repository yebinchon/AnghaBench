
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tid_ampdu_tx {scalar_t__ stop_initiator; scalar_t__ tx_stop; int state; } ;
struct TYPE_4__ {int mtx; } ;
struct TYPE_3__ {scalar_t__* addr; } ;
struct sta_info {TYPE_2__ ampdu_mlme; int lock; int sdata; TYPE_1__ sta; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int sta_mtx; } ;


 int HT_AGG_STATE_STOPPING ;
 scalar_t__ IEEE80211_NUM_TIDS ;
 scalar_t__ WLAN_BACK_INITIATOR ;
 int WLAN_REASON_QSTA_NOT_USE ;
 int ht_dbg (struct ieee80211_sub_if_data*,char*,scalar_t__*,...) ;
 int ieee80211_remove_tid_tx (struct sta_info*,scalar_t__) ;
 int ieee80211_send_delba (int ,scalar_t__*,scalar_t__,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tid_ampdu_tx* rcu_dereference_protected_tid_tx (struct sta_info*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct sta_info* sta_info_get_bss (struct ieee80211_sub_if_data*,scalar_t__*) ;
 int test_bit (int ,int *) ;
 int trace_api_stop_tx_ba_cb (struct ieee80211_sub_if_data*,scalar_t__*,scalar_t__) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_stop_tx_ba_cb(struct ieee80211_vif *vif, u8 *ra, u8 tid)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;
 struct tid_ampdu_tx *tid_tx;

 trace_api_stop_tx_ba_cb(sdata, ra, tid);

 if (tid >= IEEE80211_NUM_TIDS) {
  ht_dbg(sdata, "Bad TID value: tid = %d (>= %d)\n",
         tid, IEEE80211_NUM_TIDS);
  return;
 }

 ht_dbg(sdata, "Stopping Tx BA session for %pM tid %d\n", ra, tid);

 mutex_lock(&local->sta_mtx);

 sta = sta_info_get_bss(sdata, ra);
 if (!sta) {
  ht_dbg(sdata, "Could not find station: %pM\n", ra);
  goto unlock;
 }

 mutex_lock(&sta->ampdu_mlme.mtx);
 spin_lock_bh(&sta->lock);
 tid_tx = rcu_dereference_protected_tid_tx(sta, tid);

 if (!tid_tx || !test_bit(HT_AGG_STATE_STOPPING, &tid_tx->state)) {
  ht_dbg(sdata,
         "unexpected callback to A-MPDU stop for %pM tid %d\n",
         sta->sta.addr, tid);
  goto unlock_sta;
 }

 if (tid_tx->stop_initiator == WLAN_BACK_INITIATOR && tid_tx->tx_stop)
  ieee80211_send_delba(sta->sdata, ra, tid,
   WLAN_BACK_INITIATOR, WLAN_REASON_QSTA_NOT_USE);

 ieee80211_remove_tid_tx(sta, tid);

 unlock_sta:
 spin_unlock_bh(&sta->lock);
 mutex_unlock(&sta->ampdu_mlme.mtx);
 unlock:
 mutex_unlock(&local->sta_mtx);
}
