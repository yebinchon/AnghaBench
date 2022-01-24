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
struct ieee80211_local {int /*<<< orphan*/  scanning; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_HW_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ieee80211_local* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct ieee80211_hw *hw)
{
	struct ieee80211_local *local = FUNC1(hw);

	FUNC0(FUNC3(SCAN_HW_SCANNING, &local->scanning),
		"%s: resume with hardware scan still in progress\n",
		FUNC4(hw->wiphy));

	return FUNC2(FUNC1(hw));
}