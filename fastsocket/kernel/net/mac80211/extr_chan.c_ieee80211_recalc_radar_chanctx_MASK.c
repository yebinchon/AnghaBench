#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int radar_enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;
struct ieee80211_local {int radar_detect_enabled; TYPE_2__ hw; int /*<<< orphan*/  use_chanctx; int /*<<< orphan*/  chanctx_mtx; } ;
struct TYPE_6__ {int radar_enabled; } ;
struct ieee80211_chanctx {TYPE_3__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CHANCTX_CHANGE_RADAR ; 
 int /*<<< orphan*/  IEEE80211_CONF_CHANGE_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*,struct ieee80211_chanctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ieee80211_local *local,
				    struct ieee80211_chanctx *chanctx)
{
	bool radar_enabled;

	FUNC3(&local->chanctx_mtx);

	radar_enabled = FUNC2(local);

	if (radar_enabled == chanctx->conf.radar_enabled)
		return;

	chanctx->conf.radar_enabled = radar_enabled;
	local->radar_detect_enabled = chanctx->conf.radar_enabled;

	if (!local->use_chanctx) {
		local->hw.conf.radar_enabled = chanctx->conf.radar_enabled;
		FUNC1(local, IEEE80211_CONF_CHANGE_CHANNEL);
	}

	FUNC0(local, chanctx, IEEE80211_CHANCTX_CHANGE_RADAR);
}