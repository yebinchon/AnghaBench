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
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  name; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  wiphy; scalar_t__ vif_data_size; } ;
struct ieee80211_local {int /*<<< orphan*/  iflist_mtx; scalar_t__ monitor_sdata; int /*<<< orphan*/  monitor_chandef; TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_CHANCTX_EXCLUSIVE ; 
 int IEEE80211_HW_WANT_MONITOR_VIF ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MONITOR ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int FUNC4 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*) ; 
 int FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_sub_if_data* FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct ieee80211_local *local)
{
	struct ieee80211_sub_if_data *sdata;
	int ret;

	if (!(local->hw.flags & IEEE80211_HW_WANT_MONITOR_VIF))
		return 0;

	FUNC0();

	if (local->monitor_sdata)
		return 0;

	sdata = FUNC8(sizeof(*sdata) + local->hw.vif_data_size, GFP_KERNEL);
	if (!sdata)
		return -ENOMEM;

	/* set up data */
	sdata->local = local;
	sdata->vif.type = NL80211_IFTYPE_MONITOR;
	FUNC12(sdata->name, IFNAMSIZ, "%s-monitor",
		 FUNC13(local->hw.wiphy));

	FUNC5(sdata);

	ret = FUNC2(local, sdata);
	if (FUNC1(ret)) {
		/* ok .. stupid driver, it asked for this! */
		FUNC7(sdata);
		return ret;
	}

	ret = FUNC4(sdata);
	if (ret) {
		FUNC7(sdata);
		return ret;
	}

	ret = FUNC6(sdata, &local->monitor_chandef,
					IEEE80211_CHANCTX_EXCLUSIVE);
	if (ret) {
		FUNC3(local, sdata);
		FUNC7(sdata);
		return ret;
	}

	FUNC9(&local->iflist_mtx);
	FUNC11(local->monitor_sdata, sdata);
	FUNC10(&local->iflist_mtx);

	return 0;
}