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
struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  devlist_mtx; } ;
struct cfg80211_ibss_params {int dummy; } ;
struct cfg80211_cached_keys {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_ibss_params*,struct cfg80211_cached_keys*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct wireless_dev*) ; 

int FUNC5(struct cfg80211_registered_device *rdev,
		       struct net_device *dev,
		       struct cfg80211_ibss_params *params,
		       struct cfg80211_cached_keys *connkeys)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err;

	FUNC1(&rdev->devlist_mtx);
	FUNC3(wdev);
	err = FUNC0(rdev, dev, params, connkeys);
	FUNC4(wdev);
	FUNC2(&rdev->devlist_mtx);

	return err;
}