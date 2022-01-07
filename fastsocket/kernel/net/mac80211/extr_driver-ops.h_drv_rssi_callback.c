
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
typedef enum ieee80211_rssi_event { ____Placeholder_ieee80211_rssi_event } ieee80211_rssi_event ;
struct TYPE_2__ {int (* rssi_callback ) (int *,int *,int const) ;} ;


 int stub1 (int *,int *,int const) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_rssi_callback (struct ieee80211_local*,struct ieee80211_sub_if_data*,int const) ;

__attribute__((used)) static inline void drv_rssi_callback(struct ieee80211_local *local,
         struct ieee80211_sub_if_data *sdata,
         const enum ieee80211_rssi_event event)
{
 trace_drv_rssi_callback(local, sdata, event);
 if (local->ops->rssi_callback)
  local->ops->rssi_callback(&local->hw, &sdata->vif, event);
 trace_drv_return_void(local);
}
