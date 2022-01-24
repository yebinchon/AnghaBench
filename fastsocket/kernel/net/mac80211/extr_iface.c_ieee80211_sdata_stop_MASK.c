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
struct ieee80211_sub_if_data {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDATA_STATE_RUNNING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct ieee80211_sub_if_data *sdata)
{
	if (FUNC0(!FUNC3(SDATA_STATE_RUNNING, &sdata->state)))
		return;
	FUNC1(sdata, true);
	FUNC2(sdata);
}