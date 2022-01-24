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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_if_managed {int /*<<< orphan*/  mtx; TYPE_2__* associated; scalar_t__ auth_data; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  local; TYPE_1__ u; } ;
struct cfg80211_deauth_request {int /*<<< orphan*/  reason_code; int /*<<< orphan*/  bssid; int /*<<< orphan*/  local_state_change; } ;
struct TYPE_4__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int IEEE80211_DEAUTH_FRAME_LEN ; 
 int /*<<< orphan*/  IEEE80211_STYPE_DEAUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct ieee80211_sub_if_data *sdata,
			 struct cfg80211_deauth_request *req)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];
	bool tx = !req->local_state_change;
	bool report_frame = false;

	FUNC6(&ifmgd->mtx);

	FUNC8(sdata,
		   "deauthenticating from %pM by local choice (reason=%d)\n",
		   req->bssid, req->reason_code);

	if (ifmgd->auth_data) {
		FUNC1(sdata->local, sdata);
		FUNC4(sdata, req->bssid,
					       IEEE80211_STYPE_DEAUTH,
					       req->reason_code, tx,
					       frame_buf);
		FUNC3(sdata, false);
		FUNC7(&ifmgd->mtx);

		report_frame = true;
		goto out;
	}

	if (ifmgd->associated &&
	    FUNC2(ifmgd->associated->bssid, req->bssid)) {
		FUNC5(sdata, IEEE80211_STYPE_DEAUTH,
				       req->reason_code, tx, frame_buf);
		report_frame = true;
	}
	FUNC7(&ifmgd->mtx);

 out:
	if (report_frame)
		FUNC0(sdata->dev, frame_buf,
				       IEEE80211_DEAUTH_FRAME_LEN);

	return 0;
}