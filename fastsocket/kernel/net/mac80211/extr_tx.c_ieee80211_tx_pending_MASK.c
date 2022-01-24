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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct TYPE_4__ {int queues; } ;
struct ieee80211_local {int /*<<< orphan*/  queue_stop_reason_lock; int /*<<< orphan*/ * pending; TYPE_2__ hw; scalar_t__* queue_stop_reasons; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int) ; 
 int FUNC5 (struct ieee80211_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(unsigned long data)
{
	struct ieee80211_local *local = (struct ieee80211_local *)data;
	unsigned long flags;
	int i;
	bool txok;

	FUNC6();

	FUNC9(&local->queue_stop_reason_lock, flags);
	for (i = 0; i < local->hw.queues; i++) {
		/*
		 * If queue is stopped by something other than due to pending
		 * frames, or we have no pending frames, proceed to next queue.
		 */
		if (local->queue_stop_reasons[i] ||
		    FUNC8(&local->pending[i]))
			continue;

		while (!FUNC8(&local->pending[i])) {
			struct sk_buff *skb = FUNC2(&local->pending[i]);
			struct ieee80211_tx_info *info = FUNC0(skb);

			if (FUNC1(!info->control.vif)) {
				FUNC3(&local->hw, skb);
				continue;
			}

			FUNC10(&local->queue_stop_reason_lock,
						flags);

			txok = FUNC5(local, skb);
			FUNC9(&local->queue_stop_reason_lock,
					  flags);
			if (!txok)
				break;
		}

		if (FUNC8(&local->pending[i]))
			FUNC4(local, i);
	}
	FUNC10(&local->queue_stop_reason_lock, flags);

	FUNC7();
}