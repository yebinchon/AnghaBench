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
struct wireless_dev {int iftype; int /*<<< orphan*/  list; int /*<<< orphan*/  netdev; int /*<<< orphan*/  wiphy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  devlist_mtx; int /*<<< orphan*/  sched_scan_mtx; int /*<<< orphan*/  devlist_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  NL80211_IFTYPE_P2P_DEVICE 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct wireless_dev *wdev)
{
	struct cfg80211_registered_device *rdev = FUNC7(wdev->wiphy);

	FUNC0();

	if (FUNC1(wdev->netdev))
		return;

	FUNC5(&rdev->devlist_mtx);
	FUNC5(&rdev->sched_scan_mtx);
	FUNC4(&wdev->list);
	rdev->devlist_generation++;

	switch (wdev->iftype) {
	case NL80211_IFTYPE_P2P_DEVICE:
		FUNC3(rdev, wdev);
		break;
	default:
		FUNC2(1);
		break;
	}
	FUNC6(&rdev->sched_scan_mtx);
	FUNC6(&rdev->devlist_mtx);
}