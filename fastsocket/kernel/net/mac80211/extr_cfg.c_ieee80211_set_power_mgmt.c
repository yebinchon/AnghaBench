
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int ieee80211_ptr; } ;
struct TYPE_6__ {int powersave; int mtx; int req_smps; } ;
struct TYPE_7__ {TYPE_2__ mgd; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;
struct TYPE_8__ {int flags; } ;
struct ieee80211_local {int dynamic_ps_forced_timeout; TYPE_4__ hw; } ;


 int EOPNOTSUPP ;
 int IEEE80211_CONF_CHANGE_PS ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_HW_SUPPORTS_DYNAMIC_PS ;
 int IEEE80211_HW_SUPPORTS_PS ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int __ieee80211_request_smps (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_recalc_ps (struct ieee80211_local*,int) ;
 int ieee80211_recalc_ps_vif (struct ieee80211_sub_if_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_local* wdev_priv (int ) ;

__attribute__((used)) static int ieee80211_set_power_mgmt(struct wiphy *wiphy, struct net_device *dev,
        bool enabled, int timeout)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = wdev_priv(dev->ieee80211_ptr);

 if (sdata->vif.type != NL80211_IFTYPE_STATION &&
     sdata->vif.type != NL80211_IFTYPE_MESH_POINT)
  return -EOPNOTSUPP;

 if (!(local->hw.flags & IEEE80211_HW_SUPPORTS_PS))
  return -EOPNOTSUPP;

 if (enabled == sdata->u.mgd.powersave &&
     timeout == local->dynamic_ps_forced_timeout)
  return 0;

 sdata->u.mgd.powersave = enabled;
 local->dynamic_ps_forced_timeout = timeout;


 mutex_lock(&sdata->u.mgd.mtx);
 __ieee80211_request_smps(sdata, sdata->u.mgd.req_smps);
 mutex_unlock(&sdata->u.mgd.mtx);

 if (local->hw.flags & IEEE80211_HW_SUPPORTS_DYNAMIC_PS)
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_PS);

 ieee80211_recalc_ps(local, -1);
 ieee80211_recalc_ps_vif(sdata);

 return 0;
}
