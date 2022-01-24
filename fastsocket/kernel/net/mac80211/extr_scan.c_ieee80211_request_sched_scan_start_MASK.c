#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_sched_scan_ies {int /*<<< orphan*/ * ie; int /*<<< orphan*/ * len; } ;
struct TYPE_6__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {int scan_ies_len; int /*<<< orphan*/  mtx; int /*<<< orphan*/  sched_scan_sdata; TYPE_3__ hw; TYPE_1__* ops; } ;
struct cfg80211_sched_scan_request {int ie_len; int /*<<< orphan*/  ie; } ;
struct TYPE_5__ {int /*<<< orphan*/ * bands; } ;
struct TYPE_4__ {int /*<<< orphan*/  sched_scan_start; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_MAX_SSID_LEN ; 
 int IEEE80211_NUM_BANDS ; 
 int FUNC0 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ieee80211_sub_if_data*) ; 

int FUNC8(struct ieee80211_sub_if_data *sdata,
				       struct cfg80211_sched_scan_request *req)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_sched_scan_ies sched_scan_ies = {};
	int ret, i, iebufsz;

	iebufsz = 2 + IEEE80211_MAX_SSID_LEN +
		  local->scan_ies_len + req->ie_len;

	FUNC4(&local->mtx);

	if (FUNC6(local->sched_scan_sdata)) {
		ret = -EBUSY;
		goto out;
	}

	if (!local->ops->sched_scan_start) {
		ret = -ENOTSUPP;
		goto out;
	}

	for (i = 0; i < IEEE80211_NUM_BANDS; i++) {
		if (!local->hw.wiphy->bands[i])
			continue;

		sched_scan_ies.ie[i] = FUNC3(iebufsz, GFP_KERNEL);
		if (!sched_scan_ies.ie[i]) {
			ret = -ENOMEM;
			goto out_free;
		}

		sched_scan_ies.len[i] =
			FUNC1(local, sched_scan_ies.ie[i],
						 iebufsz, req->ie, req->ie_len,
						 i, (u32) -1, 0);
	}

	ret = FUNC0(local, sdata, req, &sched_scan_ies);
	if (ret == 0)
		FUNC7(local->sched_scan_sdata, sdata);

out_free:
	while (i > 0)
		FUNC2(sched_scan_ies.ie[--i]);
out:
	FUNC5(&local->mtx);
	return ret;
}