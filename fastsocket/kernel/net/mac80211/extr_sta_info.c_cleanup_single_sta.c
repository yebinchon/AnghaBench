
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tid_ampdu_tx {int pending; } ;
struct TYPE_9__ {int * tid_tx; } ;
struct sta_info {TYPE_4__ ampdu_mlme; int drv_unblock_wk; int * tx_filtered; int * ps_tx_buf; struct ieee80211_sub_if_data* sdata; } ;
struct ps_data {int num_sta_ps; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_7__ {struct ps_data ps; } ;
struct TYPE_8__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; TYPE_3__ u; TYPE_1__* bss; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; int total_ps_buffered; } ;
struct TYPE_6__ {struct ps_data ps; } ;


 int IEEE80211_NUM_ACS ;
 int IEEE80211_NUM_TIDS ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 int WLAN_STA_PS_STA ;
 int atomic_dec (int *) ;
 int cancel_work_sync (int *) ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int ieee80211_purge_tx_queue (int *,int *) ;
 scalar_t__ ieee80211_vif_is_mesh (TYPE_5__*) ;
 int kfree (struct tid_ampdu_tx*) ;
 int mesh_sta_cleanup (struct sta_info*) ;
 struct tid_ampdu_tx* rcu_dereference_raw (int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int sta_info_free (struct ieee80211_local*,struct sta_info*) ;
 int sta_info_recalc_tim (struct sta_info*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void cleanup_single_sta(struct sta_info *sta)
{
 int ac, i;
 struct tid_ampdu_tx *tid_tx;
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 struct ps_data *ps;
 if (test_sta_flag(sta, WLAN_STA_PS_STA)) {
  if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
      sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
   ps = &sdata->bss->ps;
  else if (ieee80211_vif_is_mesh(&sdata->vif))
   ps = &sdata->u.mesh.ps;
  else
   return;

  clear_sta_flag(sta, WLAN_STA_PS_STA);

  atomic_dec(&ps->num_sta_ps);
  sta_info_recalc_tim(sta);
 }

 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  local->total_ps_buffered -= skb_queue_len(&sta->ps_tx_buf[ac]);
  ieee80211_purge_tx_queue(&local->hw, &sta->ps_tx_buf[ac]);
  ieee80211_purge_tx_queue(&local->hw, &sta->tx_filtered[ac]);
 }

 if (ieee80211_vif_is_mesh(&sdata->vif))
  mesh_sta_cleanup(sta);

 cancel_work_sync(&sta->drv_unblock_wk);







 for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
  tid_tx = rcu_dereference_raw(sta->ampdu_mlme.tid_tx[i]);
  if (!tid_tx)
   continue;
  ieee80211_purge_tx_queue(&local->hw, &tid_tx->pending);
  kfree(tid_tx);
 }

 sta_info_free(local, sta);
}
