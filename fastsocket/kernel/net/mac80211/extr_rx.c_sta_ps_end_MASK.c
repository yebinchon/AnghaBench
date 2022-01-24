#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  aid; int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_1__ sta; int /*<<< orphan*/  sdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_STA_PS_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sta_info *sta)
{
	FUNC1(sta->sdata, "STA %pM aid %d exits power save mode\n",
	       sta->sta.addr, sta->sta.aid);

	if (FUNC2(sta, WLAN_STA_PS_DRIVER)) {
		FUNC1(sta->sdata, "STA %pM aid %d driver-ps-blocked\n",
		       sta->sta.addr, sta->sta.aid);
		return;
	}

	FUNC0(sta);
}