
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int * scan_channel; scalar_t__ scanning; int scan_sdata; int * scan_req; int * int_scan_req; int * hw_scan_req; int mtx; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int cfg80211_scan_done (int *,int) ;
 int drv_hw_scan (struct ieee80211_local*,int ,int *) ;
 int drv_sw_scan_complete (struct ieee80211_local*) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_configure_filter (struct ieee80211_local*) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_ibss_notify_scan_completed (struct ieee80211_local*) ;
 int ieee80211_mesh_notify_scan_completed (struct ieee80211_local*) ;
 int ieee80211_mlme_notify_scan_completed (struct ieee80211_local*) ;
 int ieee80211_offchannel_return (struct ieee80211_local*) ;
 scalar_t__ ieee80211_prep_hw_scan (struct ieee80211_local*) ;
 int ieee80211_recalc_idle (struct ieee80211_local*) ;
 int ieee80211_start_next_roc (struct ieee80211_local*) ;
 int kfree (int *) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void __ieee80211_scan_completed(struct ieee80211_hw *hw, bool aborted,
           bool was_hw_scan)
{
 struct ieee80211_local *local = hw_to_local(hw);

 lockdep_assert_held(&local->mtx);







 if (WARN_ON(!local->scanning && !aborted))
  aborted = 1;

 if (WARN_ON(!local->scan_req))
  return;

 if (was_hw_scan && !aborted && ieee80211_prep_hw_scan(local)) {
  int rc;

  rc = drv_hw_scan(local,
   rcu_dereference_protected(local->scan_sdata,
        lockdep_is_held(&local->mtx)),
   local->hw_scan_req);

  if (rc == 0)
   return;
 }

 kfree(local->hw_scan_req);
 local->hw_scan_req = ((void*)0);

 if (local->scan_req != local->int_scan_req)
  cfg80211_scan_done(local->scan_req, aborted);
 local->scan_req = ((void*)0);
 rcu_assign_pointer(local->scan_sdata, ((void*)0));

 local->scanning = 0;
 local->scan_channel = ((void*)0);


 ieee80211_hw_config(local, 0);

 if (!was_hw_scan) {
  ieee80211_configure_filter(local);
  drv_sw_scan_complete(local);
  ieee80211_offchannel_return(local);
 }

 ieee80211_recalc_idle(local);

 ieee80211_mlme_notify_scan_completed(local);
 ieee80211_ibss_notify_scan_completed(local);
 ieee80211_mesh_notify_scan_completed(local);
 ieee80211_start_next_roc(local);
}
