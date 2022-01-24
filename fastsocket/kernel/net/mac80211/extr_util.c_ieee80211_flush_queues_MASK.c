#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {scalar_t__* hw_queue; scalar_t__ cab_queue; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct TYPE_7__ {int flags; scalar_t__ queues; } ;
struct ieee80211_local {TYPE_3__ hw; TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  flush; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int IEEE80211_HW_QUEUE_CONTROL ; 
 scalar_t__ IEEE80211_INVAL_HW_QUEUE ; 
 int /*<<< orphan*/  IEEE80211_MAX_QUEUE_MAP ; 
 int IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct ieee80211_local *local,
			    struct ieee80211_sub_if_data *sdata)
{
	u32 queues;

	if (!local->ops->flush)
		return;

	if (sdata && local->hw.flags & IEEE80211_HW_QUEUE_CONTROL) {
		int ac;

		queues = 0;

		for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
			queues |= FUNC0(sdata->vif.hw_queue[ac]);
		if (sdata->vif.cab_queue != IEEE80211_INVAL_HW_QUEUE)
			queues |= FUNC0(sdata->vif.cab_queue);
	} else {
		/* all queues */
		queues = FUNC0(local->hw.queues) - 1;
	}

	FUNC2(&local->hw, IEEE80211_MAX_QUEUE_MAP,
					IEEE80211_QUEUE_STOP_REASON_FLUSH);

	FUNC1(local, queues, false);

	FUNC3(&local->hw, IEEE80211_MAX_QUEUE_MAP,
					IEEE80211_QUEUE_STOP_REASON_FLUSH);
}