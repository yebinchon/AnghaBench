
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct ieee80211_if_managed {scalar_t__ probe_send_count; int nullfunc_failed; scalar_t__ probe_timeout; TYPE_5__* associated; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__* local; TYPE_1__ u; } ;
struct TYPE_9__ {int channel; scalar_t__* bssid; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_2__ hw; } ;


 int IEEE80211_HW_REPORTS_TX_ACK_STATUS ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int WLAN_EID_SSID ;
 scalar_t__* ieee80211_bss_get_ie (TYPE_5__*,int ) ;
 int ieee80211_flush_queues (TYPE_3__*,struct ieee80211_sub_if_data*) ;
 int ieee80211_send_nullfunc (TYPE_3__*,struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_send_probe_req (struct ieee80211_sub_if_data*,scalar_t__*,scalar_t__ const*,int,int *,int ,int ,int,int ,int ,int) ;
 scalar_t__ jiffies ;
 scalar_t__ max (int,scalar_t__) ;
 scalar_t__ max_probe_tries ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int probe_wait_ms ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int run_again (struct ieee80211_if_managed*,scalar_t__) ;

__attribute__((used)) static void ieee80211_mgd_probe_ap_send(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 const u8 *ssid;
 u8 *dst = ifmgd->associated->bssid;
 u8 unicast_limit = max(1, max_probe_tries - 3);






 if (ifmgd->probe_send_count >= unicast_limit)
  dst = ((void*)0);
 ifmgd->probe_send_count++;

 if (sdata->local->hw.flags & IEEE80211_HW_REPORTS_TX_ACK_STATUS) {
  ifmgd->nullfunc_failed = 0;
  ieee80211_send_nullfunc(sdata->local, sdata, 0);
 } else {
  int ssid_len;

  rcu_read_lock();
  ssid = ieee80211_bss_get_ie(ifmgd->associated, WLAN_EID_SSID);
  if (WARN_ON_ONCE(ssid == ((void*)0)))
   ssid_len = 0;
  else
   ssid_len = ssid[1];

  ieee80211_send_probe_req(sdata, dst, ssid + 2, ssid_len, ((void*)0),
      0, (u32) -1, 1, 0,
      ifmgd->associated->channel, 0);
  rcu_read_unlock();
 }

 ifmgd->probe_timeout = jiffies + msecs_to_jiffies(probe_wait_ms);
 run_again(ifmgd, ifmgd->probe_timeout);
 if (sdata->local->hw.flags & IEEE80211_HW_REPORTS_TX_ACK_STATUS)
  ieee80211_flush_queues(sdata->local, sdata);
}
