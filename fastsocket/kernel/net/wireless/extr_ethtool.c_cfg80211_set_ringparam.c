
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ethtool_ringparam {scalar_t__ rx_mini_pending; scalar_t__ rx_jumbo_pending; int rx_pending; int tx_pending; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ set_ringparam; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int rdev_set_ringparam (struct cfg80211_registered_device*,int ,int ) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static int cfg80211_set_ringparam(struct net_device *dev,
      struct ethtool_ringparam *rp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);

 if (rp->rx_mini_pending != 0 || rp->rx_jumbo_pending != 0)
  return -EINVAL;

 if (rdev->ops->set_ringparam)
  return rdev_set_ringparam(rdev, rp->tx_pending, rp->rx_pending);

 return -ENOTSUPP;
}
