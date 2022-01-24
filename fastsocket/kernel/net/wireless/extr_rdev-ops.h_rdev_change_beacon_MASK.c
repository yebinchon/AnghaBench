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
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct cfg80211_beacon_data {int dummy; } ;
struct TYPE_2__ {int (* change_beacon ) (int /*<<< orphan*/ *,struct net_device*,struct cfg80211_beacon_data*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct net_device*,struct cfg80211_beacon_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct net_device*,struct cfg80211_beacon_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(struct cfg80211_registered_device *rdev,
				     struct net_device *dev,
				     struct cfg80211_beacon_data *info)
{
	int ret;
	FUNC1(&rdev->wiphy, dev, info);
	ret = rdev->ops->change_beacon(&rdev->wiphy, dev, info);
	FUNC2(&rdev->wiphy, ret);
	return ret;
}