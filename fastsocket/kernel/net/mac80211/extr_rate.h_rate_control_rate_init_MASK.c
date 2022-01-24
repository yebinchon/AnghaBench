#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_sta {int dummy; } ;
struct sta_info {TYPE_2__* sdata; void* rate_ctrl_priv; struct ieee80211_sta sta; struct rate_control_ref* rate_ctrl; } ;
struct rate_control_ref {int /*<<< orphan*/  priv; TYPE_7__* ops; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_11__ {TYPE_3__* wiphy; } ;
struct ieee80211_local {TYPE_4__ hw; } ;
struct TYPE_13__ {TYPE_5__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_6__ def; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* rate_init ) (int /*<<< orphan*/ ,struct ieee80211_supported_band*,struct ieee80211_sta*,void*) ;} ;
struct TYPE_12__ {size_t band; } ;
struct TYPE_10__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_8__ {int /*<<< orphan*/  chanctx_conf; } ;
struct TYPE_9__ {TYPE_1__ vif; struct ieee80211_local* local; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_STA_RATE_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*) ; 
 struct ieee80211_chanctx_conf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ieee80211_supported_band*,struct ieee80211_sta*,void*) ; 

__attribute__((used)) static inline void FUNC7(struct sta_info *sta)
{
	struct ieee80211_local *local = sta->sdata->local;
	struct rate_control_ref *ref = sta->rate_ctrl;
	struct ieee80211_sta *ista = &sta->sta;
	void *priv_sta = sta->rate_ctrl_priv;
	struct ieee80211_supported_band *sband;
	struct ieee80211_chanctx_conf *chanctx_conf;

	if (!ref)
		return;

	FUNC3();

	chanctx_conf = FUNC2(sta->sdata->vif.chanctx_conf);
	if (FUNC0(!chanctx_conf)) {
		FUNC4();
		return;
	}

	sband = local->hw.wiphy->bands[chanctx_conf->def.chan->band];
	FUNC4();

	FUNC1(sta);

	ref->ops->rate_init(ref->priv, sband, ista, priv_sta);
	FUNC5(sta, WLAN_STA_RATE_CONTROL);
}