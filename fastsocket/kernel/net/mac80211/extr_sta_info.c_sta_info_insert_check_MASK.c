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
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_2__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;

	/*
	 * Can't be a WARN_ON because it can be triggered through a race:
	 * something inserts a STA (on one CPU) without holding the RTNL
	 * and another CPU turns off the net device.
	 */
	if (FUNC4(!FUNC2(sdata)))
		return -ENETDOWN;

	if (FUNC0(FUNC1(sta->sta.addr, sdata->vif.addr) ||
		    FUNC3(sta->sta.addr)))
		return -EINVAL;

	return 0;
}