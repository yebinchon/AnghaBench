#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int txpower; } ;
struct TYPE_8__ {TYPE_3__ bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  local; TYPE_4__ vif; int /*<<< orphan*/  ap_power_level; int /*<<< orphan*/  user_power_level; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_5__ {int max_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_UNSET_POWER_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx_conf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

bool FUNC5(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_chanctx_conf *chanctx_conf;
	int power;

	FUNC3();
	chanctx_conf = FUNC2(sdata->vif.chanctx_conf);
	if (!chanctx_conf) {
		FUNC4();
		return false;
	}

	power = chanctx_conf->def.chan->max_power;
	FUNC4();

	if (sdata->user_power_level != IEEE80211_UNSET_POWER_LEVEL)
		power = FUNC1(power, sdata->user_power_level);

	if (sdata->ap_power_level != IEEE80211_UNSET_POWER_LEVEL)
		power = FUNC1(power, sdata->ap_power_level);

	if (power != sdata->vif.bss_conf.txpower) {
		sdata->vif.bss_conf.txpower = power;
		FUNC0(sdata->local, 0);
		return true;
	}

	return false;
}