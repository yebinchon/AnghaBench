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
struct wireless_dev {scalar_t__ iftype; int p2p_started; } ;
struct cfg80211_registered_device {TYPE_1__* scan_req; int /*<<< orphan*/  scan_done_wk; int /*<<< orphan*/  opencount; int /*<<< orphan*/  sched_scan_mtx; int /*<<< orphan*/  devlist_mtx; } ;
struct TYPE_2__ {int aborted; struct wireless_dev* wdev; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cfg80211_registered_device *rdev,
			      struct wireless_dev *wdev)
{
	FUNC2(&rdev->devlist_mtx);
	FUNC2(&rdev->sched_scan_mtx);

	if (FUNC0(wdev->iftype != NL80211_IFTYPE_P2P_DEVICE))
		return;

	if (!wdev->p2p_started)
		return;

	FUNC3(rdev, wdev);
	wdev->p2p_started = false;

	rdev->opencount--;

	if (rdev->scan_req && rdev->scan_req->wdev == wdev) {
		bool busy = FUNC4(&rdev->scan_done_wk);

		/*
		 * If the work isn't pending or running (in which case it would
		 * be waiting for the lock we hold) the driver didn't properly
		 * cancel the scan when the interface was removed. In this case
		 * warn and leak the scan request object to not crash later.
		 */
		FUNC0(!busy);

		rdev->scan_req->aborted = true;
		FUNC1(rdev, !busy);
	}
}