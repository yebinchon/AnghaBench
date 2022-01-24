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
struct wiphy {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_local {struct ieee80211_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_local* FUNC1 (struct wiphy*) ; 

struct ieee80211_hw *FUNC2(struct wiphy *wiphy)
{
	struct ieee80211_local *local;
	FUNC0(!wiphy);

	local = FUNC1(wiphy);
	return &local->hw;
}