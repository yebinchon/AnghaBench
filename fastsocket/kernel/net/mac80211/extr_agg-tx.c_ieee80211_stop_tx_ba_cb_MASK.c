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
typedef  scalar_t__ u8 ;
struct tid_ampdu_tx {scalar_t__ stop_initiator; scalar_t__ tx_stop; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_3__ {scalar_t__* addr; } ;
struct sta_info {TYPE_2__ ampdu_mlme; int /*<<< orphan*/  lock; int /*<<< orphan*/  sdata; TYPE_1__ sta; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  HT_AGG_STATE_STOPPING ; 
 scalar_t__ IEEE80211_NUM_TIDS ; 
 scalar_t__ WLAN_BACK_INITIATOR ; 
 int /*<<< orphan*/  WLAN_REASON_QSTA_NOT_USE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tid_ampdu_tx* FUNC5 (struct sta_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC8 (struct ieee80211_sub_if_data*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_sub_if_data*,scalar_t__*,scalar_t__) ; 
 struct ieee80211_sub_if_data* FUNC11 (struct ieee80211_vif*) ; 

void FUNC12(struct ieee80211_vif *vif, u8 *ra, u8 tid)
{
	struct ieee80211_sub_if_data *sdata = FUNC11(vif);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	struct tid_ampdu_tx *tid_tx;

	FUNC10(sdata, ra, tid);

	if (tid >= IEEE80211_NUM_TIDS) {
		FUNC0(sdata, "Bad TID value: tid = %d (>= %d)\n",
		       &tid, IEEE80211_NUM_TIDS);
		return;
	}

	FUNC0(sdata, "Stopping Tx BA session for %pM tid %d\n", ra, tid);

	FUNC3(&local->sta_mtx);

	sta = FUNC8(sdata, ra);
	if (!sta) {
		FUNC0(sdata, "Could not find station: %pM\n", ra);
		goto unlock;
	}

	FUNC3(&sta->ampdu_mlme.mtx);
	FUNC6(&sta->lock);
	tid_tx = FUNC5(sta, tid);

	if (!tid_tx || !FUNC9(HT_AGG_STATE_STOPPING, &tid_tx->state)) {
		FUNC0(sdata,
		       "unexpected callback to A-MPDU stop for %pM tid %d\n",
		       sta->sta.addr, tid);
		goto unlock_sta;
	}

	if (tid_tx->stop_initiator == WLAN_BACK_INITIATOR && tid_tx->tx_stop)
		FUNC2(sta->sdata, ra, tid,
			WLAN_BACK_INITIATOR, WLAN_REASON_QSTA_NOT_USE);

	FUNC1(sta, tid);

 unlock_sta:
	FUNC7(&sta->lock);
	FUNC4(&sta->ampdu_mlme.mtx);
 unlock:
	FUNC4(&local->sta_mtx);
}