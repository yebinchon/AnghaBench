
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ethtool_ringparam {int rx_max_pending; int rx_pending; int tx_max_pending; int tx_pending; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ get_ringparam; } ;


 int memset (struct ethtool_ringparam*,int ,int) ;
 int rdev_get_ringparam (struct cfg80211_registered_device*,int *,int *,int *,int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static void cfg80211_get_ringparam(struct net_device *dev,
       struct ethtool_ringparam *rp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);

 memset(rp, 0, sizeof(*rp));

 if (rdev->ops->get_ringparam)
  rdev_get_ringparam(rdev, &rp->tx_pending, &rp->tx_max_pending,
       &rp->rx_pending, &rp->rx_max_pending);
}
