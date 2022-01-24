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
struct ieee80211_if_managed {int /*<<< orphan*/  mtx; int /*<<< orphan*/  flags; int /*<<< orphan*/  associated; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; TYPE_1__* local; TYPE_2__ u; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int IEEE80211_DEAUTH_FRAME_LEN ; 
 int /*<<< orphan*/  IEEE80211_MAX_QUEUE_MAP ; 
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_CSA ; 
 int /*<<< orphan*/  IEEE80211_STA_CSA_RECEIVED ; 
 int /*<<< orphan*/  IEEE80211_STYPE_DEAUTH ; 
 int /*<<< orphan*/  WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];

	FUNC3(&ifmgd->mtx);
	if (!ifmgd->associated) {
		FUNC4(&ifmgd->mtx);
		return;
	}

	FUNC1(sdata, IEEE80211_STYPE_DEAUTH,
			       WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY,
			       true, frame_buf);
	ifmgd->flags &= ~IEEE80211_STA_CSA_RECEIVED;
	FUNC2(&sdata->local->hw,
					IEEE80211_MAX_QUEUE_MAP,
					IEEE80211_QUEUE_STOP_REASON_CSA);
	FUNC4(&ifmgd->mtx);

	/*
	 * must be outside lock due to cfg80211,
	 * but that's not a problem.
	 */
	FUNC0(sdata->dev, frame_buf, IEEE80211_DEAUTH_FRAME_LEN);
}