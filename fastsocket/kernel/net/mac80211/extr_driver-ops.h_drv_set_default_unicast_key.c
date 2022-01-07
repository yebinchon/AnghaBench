
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_default_unicast_key ) (int *,int *,int) ;} ;


 int WARN_ON_ONCE (int) ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,int *,int) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_set_default_unicast_key (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;

__attribute__((used)) static inline void
drv_set_default_unicast_key(struct ieee80211_local *local,
       struct ieee80211_sub_if_data *sdata,
       int key_idx)
{
 check_sdata_in_driver(sdata);

 WARN_ON_ONCE(key_idx < -1 || key_idx > 3);

 trace_drv_set_default_unicast_key(local, sdata, key_idx);
 if (local->ops->set_default_unicast_key)
  local->ops->set_default_unicast_key(&local->hw, &sdata->vif,
          key_idx);
 trace_drv_return_void(local);
}
