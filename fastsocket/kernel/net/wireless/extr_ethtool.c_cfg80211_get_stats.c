
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ethtool_stats {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ get_et_stats; } ;


 int rdev_get_et_stats (struct cfg80211_registered_device*,struct net_device*,struct ethtool_stats*,int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static void cfg80211_get_stats(struct net_device *dev,
          struct ethtool_stats *stats, u64 *data)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 if (rdev->ops->get_et_stats)
  rdev_get_et_stats(rdev, dev, stats, data);
}
