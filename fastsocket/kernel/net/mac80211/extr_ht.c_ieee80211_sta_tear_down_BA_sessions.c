
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
typedef enum ieee80211_agg_stop_reason { ____Placeholder_ieee80211_agg_stop_reason } ieee80211_agg_stop_reason ;


 int AGG_STOP_DESTROY_STA ;
 int AGG_STOP_PEER_REQUEST ;
 int IEEE80211_NUM_TIDS ;
 int WLAN_BACK_RECIPIENT ;
 int WLAN_REASON_QSTA_LEAVE_QBSS ;
 int __ieee80211_stop_rx_ba_session (struct sta_info*,int,int ,int ,int) ;
 int __ieee80211_stop_tx_ba_session (struct sta_info*,int,int) ;
 int cancel_work_sync (int *) ;

void ieee80211_sta_tear_down_BA_sessions(struct sta_info *sta,
      enum ieee80211_agg_stop_reason reason)
{
 int i;

 cancel_work_sync(&sta->ampdu_mlme.work);

 for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
  __ieee80211_stop_tx_ba_session(sta, i, reason);
  __ieee80211_stop_rx_ba_session(sta, i, WLAN_BACK_RECIPIENT,
            WLAN_REASON_QSTA_LEAVE_QBSS,
            reason != AGG_STOP_DESTROY_STA &&
            reason != AGG_STOP_PEER_REQUEST);
 }
}
