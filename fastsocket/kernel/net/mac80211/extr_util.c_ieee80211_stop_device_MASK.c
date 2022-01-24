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
struct ieee80211_local {int /*<<< orphan*/  workqueue; int /*<<< orphan*/  reconfig_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_TPT_LEDTRIG_FL_RADIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_local *local)
{
	FUNC3(local, false);
	FUNC4(local, 0, IEEE80211_TPT_LEDTRIG_FL_RADIO);

	FUNC0(&local->reconfig_filter);

	FUNC2(local->workqueue);
	FUNC1(local);
}