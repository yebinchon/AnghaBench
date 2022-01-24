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
struct TYPE_6__ {int /*<<< orphan*/  aid; int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_3__ sta; TYPE_2__* ps_tx_buf; TYPE_2__* tx_filtered; scalar_t__ driver_buffered_tids; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {int flags; } ;
struct ieee80211_local {int total_ps_buffered; TYPE_1__ hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IEEE80211_HW_AP_LINK_PS ; 
 int IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  IEEE80211_NUM_TIDS ; 
 int /*<<< orphan*/  STA_NOTIFY_AWAKE ; 
 int /*<<< orphan*/  WLAN_STA_SP ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clear_sta_ps_flags ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,struct sk_buff_head*,int /*<<< orphan*/ ,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*) ; 
 int FUNC7 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct sta_info*) ; 

void FUNC12(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct ieee80211_local *local = sdata->local;
	struct sk_buff_head pending;
	int filtered = 0, buffered = 0, ac;
	unsigned long flags;

	FUNC2(sta, WLAN_STA_SP);

	FUNC1(FUNC0(IEEE80211_NUM_TIDS) > 1);
	sta->driver_buffered_tids = 0;

	if (!(local->hw.flags & IEEE80211_HW_AP_LINK_PS))
		FUNC3(local, sdata, STA_NOTIFY_AWAKE, &sta->sta);

	FUNC6(&pending);

	/* Send all buffered frames to the station */
	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
		int count = FUNC7(&pending), tmp;

		FUNC9(&sta->tx_filtered[ac].lock, flags);
		FUNC8(&sta->tx_filtered[ac], &pending);
		FUNC10(&sta->tx_filtered[ac].lock, flags);
		tmp = FUNC7(&pending);
		filtered += tmp - count;
		count = tmp;

		FUNC9(&sta->ps_tx_buf[ac].lock, flags);
		FUNC8(&sta->ps_tx_buf[ac], &pending);
		FUNC10(&sta->ps_tx_buf[ac].lock, flags);
		tmp = FUNC7(&pending);
		buffered += tmp - count;
	}

	FUNC4(local, &pending, clear_sta_ps_flags, sta);

	local->total_ps_buffered -= buffered;

	FUNC11(sta);

	FUNC5(sdata,
	       "STA %pM aid %d sending %d filtered/%d PS frames since STA not sleeping anymore\n",
	       sta->sta.addr, sta->sta.aid, filtered, buffered);
}