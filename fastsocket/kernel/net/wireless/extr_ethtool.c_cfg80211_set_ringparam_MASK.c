#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ethtool_ringparam {scalar_t__ rx_mini_pending; scalar_t__ rx_jumbo_pending; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  tx_pending; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ set_ringparam; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int FUNC0 (struct cfg80211_registered_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
				  struct ethtool_ringparam *rp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC1(wdev->wiphy);

	if (rp->rx_mini_pending != 0 || rp->rx_jumbo_pending != 0)
		return -EINVAL;

	if (rdev->ops->set_ringparam)
		return FUNC0(rdev, rp->tx_pending, rp->rx_pending);

	return -ENOTSUPP;
}