#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int /*<<< orphan*/  ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  devlist_mtx; int /*<<< orphan*/  sched_scan_mtx; } ;
struct cfg80211_connect_params {int dummy; } ;
struct cfg80211_cached_keys {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_connect_params*,struct cfg80211_cached_keys*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct cfg80211_registered_device *rdev,
		     struct net_device *dev,
		     struct cfg80211_connect_params *connect,
		     struct cfg80211_cached_keys *connkeys)
{
	int err;

	FUNC1(&rdev->devlist_mtx);
	/* might request scan - scan_mtx -> wdev_mtx dependency */
	FUNC1(&rdev->sched_scan_mtx);
	FUNC3(dev->ieee80211_ptr);
	err = FUNC0(rdev, dev, connect, connkeys, NULL);
	FUNC4(dev->ieee80211_ptr);
	FUNC2(&rdev->sched_scan_mtx);
	FUNC2(&rdev->devlist_mtx);

	return err;
}