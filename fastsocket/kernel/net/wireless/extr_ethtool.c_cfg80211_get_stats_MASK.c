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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ethtool_stats {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ get_et_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*,struct net_device*,struct ethtool_stats*,int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
			       struct ethtool_stats *stats, u64 *data)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC1(wdev->wiphy);
	if (rdev->ops->get_et_stats)
		FUNC0(rdev, dev, stats, data);
}