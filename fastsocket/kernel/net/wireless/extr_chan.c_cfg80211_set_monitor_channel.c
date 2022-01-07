
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int set_monitor_channel; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int cfg80211_has_monitors_only (struct cfg80211_registered_device*) ;
 int rdev_set_monitor_channel (struct cfg80211_registered_device*,struct cfg80211_chan_def*) ;

int cfg80211_set_monitor_channel(struct cfg80211_registered_device *rdev,
     struct cfg80211_chan_def *chandef)
{
 if (!rdev->ops->set_monitor_channel)
  return -EOPNOTSUPP;
 if (!cfg80211_has_monitors_only(rdev))
  return -EBUSY;

 return rdev_set_monitor_channel(rdev, chandef);
}
