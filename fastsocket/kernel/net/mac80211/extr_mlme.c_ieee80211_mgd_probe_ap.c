
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_if_managed {int flags; int mtx; scalar_t__ probe_send_count; int associated; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; int vif; TYPE_1__ u; } ;
struct TYPE_4__ {int iflist_mtx; int mtx; scalar_t__ scanning; scalar_t__ tmp_channel; } ;


 int GFP_KERNEL ;
 int IEEE80211_STA_BEACON_POLL ;
 int IEEE80211_STA_CONNECTION_POLL ;
 int NL80211_CQM_RSSI_BEACON_LOSS_EVENT ;
 int beacon_loss_count ;
 int ieee80211_cqm_rssi_notify (int *,int ,int ) ;
 int ieee80211_mgd_probe_ap_send (struct ieee80211_sub_if_data*) ;
 int ieee80211_recalc_ps (TYPE_2__*,int) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int mlme_dbg_ratelimited (struct ieee80211_sub_if_data*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ieee80211_mgd_probe_ap(struct ieee80211_sub_if_data *sdata,
       bool beacon)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 bool already = 0;

 if (!ieee80211_sdata_running(sdata))
  return;

 mutex_lock(&ifmgd->mtx);

 if (!ifmgd->associated)
  goto out;

 mutex_lock(&sdata->local->mtx);

 if (sdata->local->tmp_channel || sdata->local->scanning) {
  mutex_unlock(&sdata->local->mtx);
  goto out;
 }

 if (beacon) {
  mlme_dbg_ratelimited(sdata,
         "detected beacon loss from AP (missed %d beacons) - probing\n",
         beacon_loss_count);

  ieee80211_cqm_rssi_notify(&sdata->vif,
       NL80211_CQM_RSSI_BEACON_LOSS_EVENT,
       GFP_KERNEL);
 }
 if (ifmgd->flags & (IEEE80211_STA_BEACON_POLL |
       IEEE80211_STA_CONNECTION_POLL))
  already = 1;

 if (beacon)
  ifmgd->flags |= IEEE80211_STA_BEACON_POLL;
 else
  ifmgd->flags |= IEEE80211_STA_CONNECTION_POLL;

 mutex_unlock(&sdata->local->mtx);

 if (already)
  goto out;

 mutex_lock(&sdata->local->iflist_mtx);
 ieee80211_recalc_ps(sdata->local, -1);
 mutex_unlock(&sdata->local->iflist_mtx);

 ifmgd->probe_send_count = 0;
 ieee80211_mgd_probe_ap_send(sdata);
 out:
 mutex_unlock(&ifmgd->mtx);
}
