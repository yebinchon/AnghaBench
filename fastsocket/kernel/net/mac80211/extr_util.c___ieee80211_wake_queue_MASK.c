#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee80211_local {scalar_t__* queue_stop_reasons; int /*<<< orphan*/  tx_pending_tasklet; int /*<<< orphan*/ * pending; } ;
struct ieee80211_hw {int queues; } ;
typedef  enum queue_stop_reason { ____Placeholder_queue_stop_reason } queue_stop_reason ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 struct ieee80211_local* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_local*,int,int) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw, int queue,
				   enum queue_stop_reason reason)
{
	struct ieee80211_local *local = FUNC2(hw);

	FUNC9(local, queue, reason);

	if (FUNC0(queue >= hw->queues))
		return;

	if (!FUNC8(reason, &local->queue_stop_reasons[queue]))
		return;

	FUNC1(reason, &local->queue_stop_reasons[queue]);

	if (local->queue_stop_reasons[queue] != 0)
		/* someone still has this queue stopped */
		return;

	if (FUNC6(&local->pending[queue])) {
		FUNC4();
		FUNC3(local, queue);
		FUNC5();
	} else
		FUNC7(&local->tx_pending_tasklet);
}