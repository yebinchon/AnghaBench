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
typedef  size_t u16 ;
struct tid_ampdu_rx {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  session_timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tid_rx; int /*<<< orphan*/  mtx; } ;
struct sta_info {TYPE_2__ sta; int /*<<< orphan*/  sdata; TYPE_1__ ampdu_mlme; struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_AMPDU_RX_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t WLAN_BACK_RECIPIENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ieee80211_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,char*,int) ; 
 int /*<<< orphan*/  ieee80211_free_tid_rx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct tid_ampdu_rx* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 

void FUNC10(struct sta_info *sta, u16 tid,
				     u16 initiator, u16 reason, bool tx)
{
	struct ieee80211_local *local = sta->local;
	struct tid_ampdu_rx *tid_rx;

	FUNC6(&sta->ampdu_mlme.mtx);

	tid_rx = FUNC8(sta->ampdu_mlme.tid_rx[tid],
					FUNC7(&sta->ampdu_mlme.mtx));

	if (!tid_rx)
		return;

	FUNC0(sta->ampdu_mlme.tid_rx[tid], NULL);

	FUNC4(sta->sdata,
	       "Rx BA session stop requested for %pM tid %u %s reason: %d\n",
	       sta->sta.addr, tid,
	       initiator == WLAN_BACK_RECIPIENT ? "recipient" : "inititator",
	       (int)reason);

	if (FUNC3(local, sta->sdata, IEEE80211_AMPDU_RX_STOP,
			     &sta->sta, tid, NULL, 0))
		FUNC9(sta->sdata,
			   "HW problem - can not stop rx aggregation for %pM tid %d\n",
			   sta->sta.addr, tid);

	/* check if this is a self generated aggregation halt */
	if (initiator == WLAN_BACK_RECIPIENT && tx)
		FUNC5(sta->sdata, sta->sta.addr,
				     tid, WLAN_BACK_RECIPIENT, reason);

	FUNC2(&tid_rx->session_timer);

	FUNC1(&tid_rx->rcu_head, ieee80211_free_tid_rx);
}