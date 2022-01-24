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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {scalar_t__ plink_state; int /*<<< orphan*/ * tx_filtered; int /*<<< orphan*/ * ps_tx_buf; TYPE_1__ sta; int /*<<< orphan*/  sdata; int /*<<< orphan*/  llid; } ;
struct ieee802_11_elems {int /*<<< orphan*/ * awake_window; int /*<<< orphan*/  tim_len; int /*<<< orphan*/  tim; } ;

/* Variables and functions */
 int IEEE80211_MAX_AID ; 
 int IEEE80211_NUM_ACS ; 
 scalar_t__ NL80211_PLINK_ESTAB ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sta_info*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sta_info*,int /*<<< orphan*/ ) ; 

void FUNC7(struct sta_info *sta,
				 struct ieee802_11_elems *elems)
{
	int ac, buffer_local = 0;
	bool has_buffered = false;

	/* TIM map only for LLID <= IEEE80211_MAX_AID */
	if (sta->plink_state == NL80211_PLINK_ESTAB)
		has_buffered = FUNC0(elems->tim, elems->tim_len,
				FUNC1(sta->llid) % IEEE80211_MAX_AID);

	if (has_buffered)
		FUNC2(sta->sdata, "%pM indicates buffered frames\n",
			sta->sta.addr);

	/* only transmit to PS STA with announced, non-zero awake window */
	if (FUNC6(sta, WLAN_STA_PS_STA) &&
	    (!elems->awake_window || !FUNC1(*elems->awake_window)))
		return;

	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
		buffer_local += FUNC5(&sta->ps_tx_buf[ac]) +
				FUNC5(&sta->tx_filtered[ac]);

	if (!has_buffered && !buffer_local)
		return;

	if (sta->plink_state == NL80211_PLINK_ESTAB)
		FUNC4(sta, has_buffered, !buffer_local);
	else
		FUNC3(sta, 1);
}