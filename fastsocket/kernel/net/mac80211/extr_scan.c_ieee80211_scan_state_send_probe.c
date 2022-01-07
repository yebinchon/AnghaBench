
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_9__ {TYPE_6__* chan; } ;
struct TYPE_10__ {TYPE_3__ chandef; } ;
struct TYPE_11__ {TYPE_4__ conf; } ;
struct ieee80211_local {int next_scan_state; TYPE_5__ hw; TYPE_2__* scan_req; int mtx; int scan_sdata; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_12__ {int band; } ;
struct TYPE_8__ {int n_ssids; int * rates; int ie_len; int ie; TYPE_1__* ssids; scalar_t__ no_cck; } ;
struct TYPE_7__ {int ssid_len; int ssid; } ;


 unsigned long IEEE80211_CHANNEL_TIME ;
 int IEEE80211_TX_CTL_NO_CCK_RATE ;
 int IEEE80211_TX_INTFL_OFFCHAN_TX_OK ;
 int SCAN_DECISION ;
 int ieee80211_send_probe_req (struct ieee80211_sub_if_data*,int *,int ,int ,int ,int ,int ,int,int ,TYPE_6__*,int) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sub_if_data* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void ieee80211_scan_state_send_probe(struct ieee80211_local *local,
         unsigned long *next_delay)
{
 int i;
 struct ieee80211_sub_if_data *sdata;
 enum ieee80211_band band = local->hw.conf.chandef.chan->band;
 u32 tx_flags;

 tx_flags = IEEE80211_TX_INTFL_OFFCHAN_TX_OK;
 if (local->scan_req->no_cck)
  tx_flags |= IEEE80211_TX_CTL_NO_CCK_RATE;

 sdata = rcu_dereference_protected(local->scan_sdata,
       lockdep_is_held(&local->mtx));

 for (i = 0; i < local->scan_req->n_ssids; i++)
  ieee80211_send_probe_req(
   sdata, ((void*)0),
   local->scan_req->ssids[i].ssid,
   local->scan_req->ssids[i].ssid_len,
   local->scan_req->ie, local->scan_req->ie_len,
   local->scan_req->rates[band], 0,
   tx_flags, local->hw.conf.chandef.chan, 1);





 *next_delay = IEEE80211_CHANNEL_TIME;
 local->next_scan_state = SCAN_DECISION;
}
