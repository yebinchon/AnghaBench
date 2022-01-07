
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int flags; TYPE_3__ vif; } ;
struct TYPE_5__ {int flags; } ;
struct ieee80211_local {TYPE_2__ hw; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* add_interface ) (TYPE_2__*,TYPE_3__*) ;} ;


 int EINVAL ;
 int IEEE80211_HW_WANT_MONITOR_VIF ;
 int IEEE80211_SDATA_IN_DRIVER ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ WARN_ON (int) ;
 int might_sleep () ;
 int stub1 (TYPE_2__*,TYPE_3__*) ;
 int trace_drv_add_interface (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;

__attribute__((used)) static inline int drv_add_interface(struct ieee80211_local *local,
        struct ieee80211_sub_if_data *sdata)
{
 int ret;

 might_sleep();

 if (WARN_ON(sdata->vif.type == NL80211_IFTYPE_AP_VLAN ||
      (sdata->vif.type == NL80211_IFTYPE_MONITOR &&
       !(local->hw.flags & IEEE80211_HW_WANT_MONITOR_VIF))))
  return -EINVAL;

 trace_drv_add_interface(local, sdata);
 ret = local->ops->add_interface(&local->hw, &sdata->vif);
 trace_drv_return_int(local, ret);

 if (ret == 0)
  sdata->flags |= IEEE80211_SDATA_IN_DRIVER;

 return ret;
}
