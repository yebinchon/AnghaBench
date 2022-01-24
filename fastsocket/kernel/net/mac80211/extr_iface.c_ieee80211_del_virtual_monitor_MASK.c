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
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ieee80211_local {int /*<<< orphan*/  iflist_mtx; int /*<<< orphan*/  monitor_sdata; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int IEEE80211_HW_WANT_MONITOR_VIF ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(struct ieee80211_local *local)
{
	struct ieee80211_sub_if_data *sdata;

	if (!(local->hw.flags & IEEE80211_HW_WANT_MONITOR_VIF))
		return;

	FUNC0();

	FUNC5(&local->iflist_mtx);

	sdata = FUNC8(local->monitor_sdata,
					  FUNC4(&local->iflist_mtx));
	if (!sdata) {
		FUNC6(&local->iflist_mtx);
		return;
	}

	FUNC7(local->monitor_sdata, NULL);
	FUNC6(&local->iflist_mtx);

	FUNC9();

	FUNC2(sdata);

	FUNC1(local, sdata);

	FUNC3(sdata);
}