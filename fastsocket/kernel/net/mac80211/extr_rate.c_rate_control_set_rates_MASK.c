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
struct ieee80211_sta_rates {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  rates; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sta_rates*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_sta_rates*) ; 
 struct ieee80211_sta_rates* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rcu_head ; 

int FUNC3(struct ieee80211_hw *hw,
			   struct ieee80211_sta *pubsta,
			   struct ieee80211_sta_rates *rates)
{
	struct ieee80211_sta_rates *old;

	/*
	 * mac80211 guarantees that this function will not be called
	 * concurrently, so the following RCU access is safe, even without
	 * extra locking. This can not be checked easily, so we just set
	 * the condition to true.
	 */
	old = FUNC2(pubsta->rates, true);
	FUNC1(pubsta->rates, rates);
	if (old)
		FUNC0(old, rcu_head);

	return 0;
}