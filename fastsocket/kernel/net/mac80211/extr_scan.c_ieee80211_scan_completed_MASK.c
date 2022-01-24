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
struct ieee80211_local {int /*<<< orphan*/  scan_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  scanning; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_ABORTED ; 
 int /*<<< orphan*/  SCAN_COMPLETED ; 
 struct ieee80211_local* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int) ; 

void FUNC4(struct ieee80211_hw *hw, bool aborted)
{
	struct ieee80211_local *local = FUNC0(hw);

	FUNC3(local, aborted);

	FUNC2(SCAN_COMPLETED, &local->scanning);
	if (aborted)
		FUNC2(SCAN_ABORTED, &local->scanning);
	FUNC1(&local->hw, &local->scan_work, 0);
}