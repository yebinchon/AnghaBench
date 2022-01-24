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
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct net {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  mtx; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct cfg80211_registered_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg80211_mutex ; 
 struct net_device* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC5 (int /*<<< orphan*/ ) ; 

struct cfg80211_registered_device *
FUNC6(struct net *net, int ifindex)
{
	struct cfg80211_registered_device *rdev = FUNC0(-ENODEV);
	struct net_device *dev;

	FUNC3(&cfg80211_mutex);
	dev = FUNC1(net, ifindex);
	if (!dev)
		goto out;
	if (dev->ieee80211_ptr) {
		rdev = FUNC5(dev->ieee80211_ptr->wiphy);
		FUNC3(&rdev->mtx);
	} else
		rdev = FUNC0(-ENODEV);
	FUNC2(dev);
 out:
	FUNC4(&cfg80211_mutex);
	return rdev;
}