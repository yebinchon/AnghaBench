#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  smps_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  work; } ;
struct sta_info {int* timer_to_tid; TYPE_5__ sta; int /*<<< orphan*/ * last_seq_ctrl; int /*<<< orphan*/ * tx_filtered; int /*<<< orphan*/ * ps_tx_buf; int /*<<< orphan*/  avg_signal; int /*<<< orphan*/  last_connected; int /*<<< orphan*/  sta_state; int /*<<< orphan*/  last_rx; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; int /*<<< orphan*/  plink_timer; TYPE_2__ ampdu_mlme; int /*<<< orphan*/  drv_unblock_wk; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  user_mpm; } ;
struct TYPE_9__ {TYPE_3__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; int /*<<< orphan*/  vif; struct ieee80211_local* local; } ;
struct TYPE_6__ {scalar_t__ sta_data_size; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_NUM_ACS ; 
 int IEEE80211_NUM_TIDS ; 
 int /*<<< orphan*/  IEEE80211_SMPS_OFF ; 
 int /*<<< orphan*/  IEEE80211_STA_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  ieee80211_ba_session_work ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct sta_info*) ; 
 struct sta_info* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct ieee80211_local*,struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sta_unblock ; 

struct sta_info *FUNC14(struct ieee80211_sub_if_data *sdata,
				const u8 *addr, gfp_t gfp)
{
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	struct timespec uptime;
	int i;

	sta = FUNC7(sizeof(*sta) + local->hw.sta_data_size, gfp);
	if (!sta)
		return NULL;

	FUNC11(&sta->lock);
	FUNC0(&sta->drv_unblock_wk, sta_unblock);
	FUNC0(&sta->ampdu_mlme.work, ieee80211_ba_session_work);
	FUNC9(&sta->ampdu_mlme.mtx);
#ifdef CONFIG_MAC80211_MESH
	if (ieee80211_vif_is_mesh(&sdata->vif) &&
	    !sdata->u.mesh.user_mpm)
		init_timer(&sta->plink_timer);
#endif

	FUNC8(sta->sta.addr, addr, ETH_ALEN);
	sta->local = local;
	sta->sdata = sdata;
	sta->last_rx = jiffies;

	sta->sta_state = IEEE80211_STA_NONE;

	FUNC2(&uptime);
	sta->last_connected = uptime.tv_sec;
	FUNC3(&sta->avg_signal, 1024, 8);

	if (FUNC13(local, sta, gfp)) {
		FUNC6(sta);
		return NULL;
	}

	for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
		/*
		 * timer_to_tid must be initialized with identity mapping
		 * to enable session_timer's data differentiation. See
		 * sta_rx_agg_session_timer_expired for usage.
		 */
		sta->timer_to_tid[i] = i;
	}
	for (i = 0; i < IEEE80211_NUM_ACS; i++) {
		FUNC10(&sta->ps_tx_buf[i]);
		FUNC10(&sta->tx_filtered[i]);
	}

	for (i = 0; i < IEEE80211_NUM_TIDS; i++)
		sta->last_seq_ctrl[i] = FUNC1(USHRT_MAX);

	sta->sta.smps_mode = IEEE80211_SMPS_OFF;

	FUNC12(sdata, "Allocated STA %pM\n", sta->sta.addr);

	return sta;
}