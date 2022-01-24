#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct TYPE_3__ {int registered; int /*<<< orphan*/  dev; int /*<<< orphan*/  debugfsdir; } ;
struct cfg80211_registered_device {int opencount; TYPE_2__* ops; scalar_t__ wowlan; int /*<<< orphan*/  dfs_update_channels_wk; int /*<<< orphan*/  event_work; int /*<<< orphan*/  conn_work; int /*<<< orphan*/  scan_done_wk; TYPE_1__ wiphy; int /*<<< orphan*/  list; int /*<<< orphan*/  devlist_mtx; int /*<<< orphan*/  wdev_list; int /*<<< orphan*/  dev_wait; int /*<<< orphan*/  rfkill; } ;
struct TYPE_4__ {scalar_t__ set_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  cfg80211_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  cfg80211_rdev_list_generation ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct cfg80211_registered_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct wiphy*) ; 
 struct cfg80211_registered_device* FUNC20 (struct wiphy*) ; 

void FUNC21(struct wiphy *wiphy)
{
	struct cfg80211_registered_device *rdev = FUNC20(wiphy);

	FUNC15();
	rdev->wiphy.registered = false;
	FUNC16();

	FUNC14(rdev->rfkill);

	/* protect the device list */
	FUNC11(&cfg80211_mutex);

	FUNC18(rdev->dev_wait, ({
		int __count;
		FUNC11(&rdev->devlist_mtx);
		__count = rdev->opencount;
		FUNC12(&rdev->devlist_mtx);
		__count == 0; }));

	FUNC11(&rdev->devlist_mtx);
	FUNC0(!FUNC10(&rdev->wdev_list));
	FUNC12(&rdev->devlist_mtx);

	/*
	 * First remove the hardware from everywhere, this makes
	 * it impossible to find from userspace.
	 */
	FUNC6(rdev->wiphy.debugfsdir);
	FUNC9(&rdev->list);
	FUNC17();

	/*
	 * Try to grab rdev->mtx. If a command is still in progress,
	 * hopefully the driver will refuse it since it's tearing
	 * down the device already. We wait for this command to complete
	 * before unlinking the item from the list.
	 * Note: as codified by the BUG_ON above we cannot get here if
	 * a virtual interface is still present. Hence, we can only get
	 * to lock contention here if userspace issues a command that
	 * identified the hardware by wiphy index.
	 */
	FUNC3(rdev);
	/* nothing */
	FUNC5(rdev);

	/*
	 * If this device got a regulatory hint tell core its
	 * free to listen now to a new shiny device regulatory hint
	 */
	FUNC19(wiphy);

	cfg80211_rdev_list_generation++;
	FUNC7(&rdev->wiphy.dev);

	FUNC12(&cfg80211_mutex);

	FUNC8(&rdev->scan_done_wk);
	FUNC2(&rdev->conn_work);
	FUNC8(&rdev->event_work);
	FUNC1(&rdev->dfs_update_channels_wk);

	if (rdev->wowlan && rdev->ops->set_wakeup)
		FUNC13(rdev, false);
	FUNC4(rdev);
}