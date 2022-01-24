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
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  sched_scan_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*) ; 
 struct cfg80211_registered_device* FUNC4 (struct wiphy*) ; 

void FUNC5(struct wiphy *wiphy)
{
	struct cfg80211_registered_device *rdev = FUNC4(wiphy);

	FUNC3(wiphy);

	FUNC1(&rdev->sched_scan_mtx);
	FUNC0(rdev, true);
	FUNC2(&rdev->sched_scan_mtx);
}