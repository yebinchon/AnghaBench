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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct tid_ampdu_tx {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  HT_AGG_STATE_DRV_READY ; 
 int /*<<< orphan*/  HT_AGG_STATE_RESPONSE_RECEIVED ; 
 int /*<<< orphan*/  IEEE80211_NUM_TIDS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tid_ampdu_tx* FUNC5 (struct sta_info*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211_sub_if_data* FUNC10 (struct ieee80211_vif*) ; 

void FUNC11(struct ieee80211_vif *vif, u8 *ra, u16 tid)
{
	struct ieee80211_sub_if_data *sdata = FUNC10(vif);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	struct tid_ampdu_tx *tid_tx;

	FUNC9(sdata, ra, tid);

	if (tid >= IEEE80211_NUM_TIDS) {
		FUNC1(sdata, "Bad TID value: tid = %d (>= %d)\n",
		       tid, IEEE80211_NUM_TIDS);
		return;
	}

	FUNC3(&local->sta_mtx);
	sta = FUNC6(sdata, ra);
	if (!sta) {
		FUNC4(&local->sta_mtx);
		FUNC1(sdata, "Could not find station: %pM\n", ra);
		return;
	}

	FUNC3(&sta->ampdu_mlme.mtx);
	tid_tx = FUNC5(sta, tid);

	if (FUNC0(!tid_tx)) {
		FUNC1(sdata, "addBA was not requested!\n");
		goto unlock;
	}

	if (FUNC0(FUNC7(HT_AGG_STATE_DRV_READY, &tid_tx->state)))
		goto unlock;

	if (FUNC8(HT_AGG_STATE_RESPONSE_RECEIVED, &tid_tx->state))
		FUNC2(local, sta, tid);

 unlock:
	FUNC4(&sta->ampdu_mlme.mtx);
	FUNC4(&local->sta_mtx);
}