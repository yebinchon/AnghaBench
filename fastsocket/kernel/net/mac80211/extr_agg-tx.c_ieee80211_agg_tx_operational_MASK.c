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
typedef  int /*<<< orphan*/  u16 ;
struct tid_ampdu_tx {int /*<<< orphan*/  state; int /*<<< orphan*/  buf_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtx; } ;
struct sta_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  sdata; TYPE_2__ sta; TYPE_1__ ampdu_mlme; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HT_AGG_STATE_OPERATIONAL ; 
 int /*<<< orphan*/  IEEE80211_AMPDU_TX_OPERATIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tid_ampdu_tx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tid_ampdu_tx* FUNC5 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_local *local,
					 struct sta_info *sta, u16 tid)
{
	struct tid_ampdu_tx *tid_tx;

	FUNC4(&sta->ampdu_mlme.mtx);

	tid_tx = FUNC5(sta, tid);

	FUNC1(sta->sdata, "Aggregation is on for %pM tid %d\n",
	       sta->sta.addr, tid);

	FUNC0(local, sta->sdata,
			 IEEE80211_AMPDU_TX_OPERATIONAL,
			 &sta->sta, tid, NULL, tid_tx->buf_size);

	/*
	 * synchronize with TX path, while splicing the TX path
	 * should block so it won't put more packets onto pending.
	 */
	FUNC7(&sta->lock);

	FUNC3(sta->sdata, tid_tx, tid);
	/*
	 * Now mark as operational. This will be visible
	 * in the TX path, and lets it go lock-free in
	 * the common case.
	 */
	FUNC6(HT_AGG_STATE_OPERATIONAL, &tid_tx->state);
	FUNC2(sta->sdata, tid);

	FUNC8(&sta->lock);
}