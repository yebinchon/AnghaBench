
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ieee80211_sta {int dummy; } ;
struct sta_info {struct ieee80211_sta sta; } ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_key_conf {int dummy; } ;
struct TYPE_2__ {int (* update_tkip_key ) (int *,int *,struct ieee80211_key_conf*,struct ieee80211_sta*,int ,int *) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* get_bss_sdata (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,int *,struct ieee80211_key_conf*,struct ieee80211_sta*,int ,int *) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_update_tkip_key (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_key_conf*,struct ieee80211_sta*,int ) ;

__attribute__((used)) static inline void drv_update_tkip_key(struct ieee80211_local *local,
           struct ieee80211_sub_if_data *sdata,
           struct ieee80211_key_conf *conf,
           struct sta_info *sta, u32 iv32,
           u16 *phase1key)
{
 struct ieee80211_sta *ista = ((void*)0);

 if (sta)
  ista = &sta->sta;

 sdata = get_bss_sdata(sdata);
 check_sdata_in_driver(sdata);

 trace_drv_update_tkip_key(local, sdata, conf, ista, iv32);
 if (local->ops->update_tkip_key)
  local->ops->update_tkip_key(&local->hw, &sdata->vif, conf,
         ista, iv32, phase1key);
 trace_drv_return_void(local);
}
