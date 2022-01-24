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
struct TYPE_3__ {int idle; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  chanctx_mtx; } ;
struct ieee80211_chanctx {int /*<<< orphan*/  refcount; int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_CHANGED_IDLE ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int FUNC0 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_sub_if_data *sdata,
					struct ieee80211_chanctx *ctx)
{
	struct ieee80211_local *local = sdata->local;
	int ret;

	FUNC3(&local->chanctx_mtx);

	ret = FUNC0(local, sdata, ctx);
	if (ret)
		return ret;

	FUNC4(sdata->vif.chanctx_conf, &ctx->conf);
	ctx->refcount++;

	FUNC2(sdata);
	sdata->vif.bss_conf.idle = false;

	if (sdata->vif.type != NL80211_IFTYPE_P2P_DEVICE &&
	    sdata->vif.type != NL80211_IFTYPE_MONITOR)
		FUNC1(sdata, BSS_CHANGED_IDLE);

	return 0;
}