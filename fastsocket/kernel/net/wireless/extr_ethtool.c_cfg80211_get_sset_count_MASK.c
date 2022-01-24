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
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ get_et_sset_count; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct cfg80211_registered_device*,struct net_device*,int) ; 
 struct cfg80211_registered_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int sset)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC1(wdev->wiphy);
	if (rdev->ops->get_et_sset_count)
		return FUNC0(rdev, dev, sset);
	return -EOPNOTSUPP;
}