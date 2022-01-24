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
struct ieee80211_if_managed {int flags; int /*<<< orphan*/  conn_mon_timer; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; TYPE_2__ u; } ;
struct TYPE_3__ {int flags; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; TYPE_1__ hw; int /*<<< orphan*/  iflist_mtx; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_CONNECTION_IDLE_TIME ; 
 int IEEE80211_HW_CONNECTION_MONITOR ; 
 int IEEE80211_STA_BEACON_POLL ; 
 int IEEE80211_STA_CONNECTION_POLL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct ieee80211_local *local = sdata->local;

	FUNC4(&local->mtx);
	if (!(ifmgd->flags & (IEEE80211_STA_BEACON_POLL |
			      IEEE80211_STA_CONNECTION_POLL))) {
		FUNC5(&local->mtx);
		return;
	}

	FUNC0(sdata);

	FUNC4(&local->iflist_mtx);
	FUNC1(local, -1);
	FUNC5(&local->iflist_mtx);

	if (sdata->local->hw.flags & IEEE80211_HW_CONNECTION_MONITOR)
		goto out;

	/*
	 * We've received a probe response, but are not sure whether
	 * we have or will be receiving any beacons or data, so let's
	 * schedule the timers again, just in case.
	 */
	FUNC2(sdata);

	FUNC3(&ifmgd->conn_mon_timer,
		  FUNC6(jiffies +
				   IEEE80211_CONNECTION_IDLE_TIME));
out:
	FUNC5(&local->mtx);
}