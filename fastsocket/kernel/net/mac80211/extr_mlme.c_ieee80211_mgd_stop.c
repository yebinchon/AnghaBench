
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_if_managed {int mtx; int timer; scalar_t__ auth_data; scalar_t__ assoc_data; int chswitch_work; int csa_connection_drop_work; int request_smps_work; int beacon_connection_loss_work; int monitor_work; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int ieee80211_destroy_assoc_data (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_destroy_auth_data (struct ieee80211_sub_if_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ieee80211_mgd_stop(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;






 cancel_work_sync(&ifmgd->monitor_work);
 cancel_work_sync(&ifmgd->beacon_connection_loss_work);
 cancel_work_sync(&ifmgd->request_smps_work);
 cancel_work_sync(&ifmgd->csa_connection_drop_work);
 cancel_work_sync(&ifmgd->chswitch_work);

 mutex_lock(&ifmgd->mtx);
 if (ifmgd->assoc_data)
  ieee80211_destroy_assoc_data(sdata, 0);
 if (ifmgd->auth_data)
  ieee80211_destroy_auth_data(sdata, 0);
 del_timer_sync(&ifmgd->timer);
 mutex_unlock(&ifmgd->mtx);
}
