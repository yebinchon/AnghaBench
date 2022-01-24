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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
typedef  enum ieee80211_agg_stop_reason { ____Placeholder_ieee80211_agg_stop_reason } ieee80211_agg_stop_reason ;

/* Variables and functions */
 int FUNC0 (struct sta_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct sta_info *sta, u16 tid,
				   enum ieee80211_agg_stop_reason reason)
{
	int ret;

	FUNC1(&sta->ampdu_mlme.mtx);

	ret = FUNC0(sta, tid, reason);

	FUNC2(&sta->ampdu_mlme.mtx);

	return ret;
}