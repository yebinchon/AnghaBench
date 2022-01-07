
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int sched_scan_stop; } ;


 int EOPNOTSUPP ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee80211_request_sched_scan_stop (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static int
ieee80211_sched_scan_stop(struct wiphy *wiphy, struct net_device *dev)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);

 if (!sdata->local->ops->sched_scan_stop)
  return -EOPNOTSUPP;

 return ieee80211_request_sched_scan_stop(sdata);
}
