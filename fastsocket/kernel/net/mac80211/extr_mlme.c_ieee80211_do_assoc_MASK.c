#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mtx; struct ieee80211_mgd_assoc_data* assoc_data; } ;
struct TYPE_6__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_mgd_assoc_data {scalar_t__ tries; int timeout_started; scalar_t__ timeout; TYPE_4__* bss; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct TYPE_8__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ IEEE80211_ASSOC_MAX_TRIES ; 
 scalar_t__ IEEE80211_ASSOC_TIMEOUT ; 
 scalar_t__ IEEE80211_ASSOC_TIMEOUT_LONG ; 
 int IEEE80211_HW_REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_mgd_assoc_data *assoc_data = sdata->u.mgd.assoc_data;
	struct ieee80211_local *local = sdata->local;

	FUNC2(&sdata->u.mgd.mtx);

	assoc_data->tries++;
	if (assoc_data->tries > IEEE80211_ASSOC_MAX_TRIES) {
		FUNC5(sdata, "association with %pM timed out\n",
			   assoc_data->bss->bssid);

		/*
		 * Most likely AP is not in the range so remove the
		 * bss struct for that AP.
		 */
		FUNC0(local->hw.wiphy, assoc_data->bss);

		return -ETIMEDOUT;
	}

	FUNC5(sdata, "associate with %pM (try %d/%d)\n",
		   assoc_data->bss->bssid, assoc_data->tries,
		   IEEE80211_ASSOC_MAX_TRIES);
	FUNC1(sdata);

	if (!(local->hw.flags & IEEE80211_HW_REPORTS_TX_ACK_STATUS)) {
		assoc_data->timeout = jiffies + IEEE80211_ASSOC_TIMEOUT;
		assoc_data->timeout_started = true;
		FUNC4(&sdata->u.mgd, assoc_data->timeout);
	} else {
		assoc_data->timeout =
			FUNC3(jiffies +
					 IEEE80211_ASSOC_TIMEOUT_LONG);
		assoc_data->timeout_started = true;
		FUNC4(&sdata->u.mgd, assoc_data->timeout);
	}

	return 0;
}