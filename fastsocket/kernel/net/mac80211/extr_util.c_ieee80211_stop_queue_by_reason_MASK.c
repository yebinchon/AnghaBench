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
struct ieee80211_local {int /*<<< orphan*/  queue_stop_reason_lock; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum queue_stop_reason { ____Placeholder_queue_stop_reason } queue_stop_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int) ; 
 struct ieee80211_local* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ieee80211_hw *hw, int queue,
				    enum queue_stop_reason reason)
{
	struct ieee80211_local *local = FUNC1(hw);
	unsigned long flags;

	FUNC2(&local->queue_stop_reason_lock, flags);
	FUNC0(hw, queue, reason);
	FUNC3(&local->queue_stop_reason_lock, flags);
}