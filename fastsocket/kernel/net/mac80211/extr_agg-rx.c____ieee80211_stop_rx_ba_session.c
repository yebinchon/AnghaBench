
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct tid_ampdu_rx {int rcu_head; int session_timer; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int * tid_rx; int mtx; } ;
struct sta_info {TYPE_2__ sta; int sdata; TYPE_1__ ampdu_mlme; struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;


 int IEEE80211_AMPDU_RX_STOP ;
 int RCU_INIT_POINTER (int ,int *) ;
 size_t WLAN_BACK_RECIPIENT ;
 int call_rcu (int *,int ) ;
 int del_timer_sync (int *) ;
 scalar_t__ drv_ampdu_action (struct ieee80211_local*,int ,int ,TYPE_2__*,size_t,int *,int ) ;
 int ht_dbg (int ,char*,int ,size_t,char*,int) ;
 int ieee80211_free_tid_rx ;
 int ieee80211_send_delba (int ,int ,size_t,size_t,size_t) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 struct tid_ampdu_rx* rcu_dereference_protected (int ,int ) ;
 int sdata_info (int ,char*,int ,size_t) ;

void ___ieee80211_stop_rx_ba_session(struct sta_info *sta, u16 tid,
         u16 initiator, u16 reason, bool tx)
{
 struct ieee80211_local *local = sta->local;
 struct tid_ampdu_rx *tid_rx;

 lockdep_assert_held(&sta->ampdu_mlme.mtx);

 tid_rx = rcu_dereference_protected(sta->ampdu_mlme.tid_rx[tid],
     lockdep_is_held(&sta->ampdu_mlme.mtx));

 if (!tid_rx)
  return;

 RCU_INIT_POINTER(sta->ampdu_mlme.tid_rx[tid], ((void*)0));

 ht_dbg(sta->sdata,
        "Rx BA session stop requested for %pM tid %u %s reason: %d\n",
        sta->sta.addr, tid,
        initiator == WLAN_BACK_RECIPIENT ? "recipient" : "inititator",
        (int)reason);

 if (drv_ampdu_action(local, sta->sdata, IEEE80211_AMPDU_RX_STOP,
        &sta->sta, tid, ((void*)0), 0))
  sdata_info(sta->sdata,
      "HW problem - can not stop rx aggregation for %pM tid %d\n",
      sta->sta.addr, tid);


 if (initiator == WLAN_BACK_RECIPIENT && tx)
  ieee80211_send_delba(sta->sdata, sta->sta.addr,
         tid, WLAN_BACK_RECIPIENT, reason);

 del_timer_sync(&tid_rx->session_timer);

 call_rcu(&tid_rx->rcu_head, ieee80211_free_tid_rx);
}
