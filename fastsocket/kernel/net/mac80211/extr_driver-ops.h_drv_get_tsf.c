
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned long long (* get_tsf ) (int *,int *) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 unsigned long long stub1 (int *,int *) ;
 int trace_drv_get_tsf (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int trace_drv_return_u64 (struct ieee80211_local*,unsigned long long) ;

__attribute__((used)) static inline u64 drv_get_tsf(struct ieee80211_local *local,
         struct ieee80211_sub_if_data *sdata)
{
 u64 ret = -1ULL;

 might_sleep();

 check_sdata_in_driver(sdata);

 trace_drv_get_tsf(local, sdata);
 if (local->ops->get_tsf)
  ret = local->ops->get_tsf(&local->hw, &sdata->vif);
 trace_drv_return_u64(local, ret);
 return ret;
}
