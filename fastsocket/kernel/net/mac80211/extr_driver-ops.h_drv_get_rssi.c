
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
typedef int s8 ;
struct TYPE_2__ {int (* get_rssi ) (int *,int *,struct ieee80211_sta*,int *) ;} ;


 int might_sleep () ;
 int stub1 (int *,int *,struct ieee80211_sta*,int *) ;
 int trace_drv_get_rssi (struct ieee80211_local*,struct ieee80211_sta*,int ,int) ;

__attribute__((used)) static inline int drv_get_rssi(struct ieee80211_local *local,
    struct ieee80211_sub_if_data *sdata,
    struct ieee80211_sta *sta,
    s8 *rssi_dbm)
{
 int ret;

 might_sleep();

 ret = local->ops->get_rssi(&local->hw, &sdata->vif, sta, rssi_dbm);
 trace_drv_get_rssi(local, sta, *rssi_dbm, ret);

 return ret;
}
