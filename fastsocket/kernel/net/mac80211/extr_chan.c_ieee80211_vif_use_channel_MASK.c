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
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_3__ {struct cfg80211_chan_def chandef; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; scalar_t__ dev; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  chanctx_mtx; } ;
struct ieee80211_chanctx {scalar_t__ refcount; } ;
typedef  enum ieee80211_chanctx_mode { ____Placeholder_ieee80211_chanctx_mode } ieee80211_chanctx_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_chanctx*) ; 
 int FUNC1 (struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 int FUNC4 (struct ieee80211_sub_if_data*,struct ieee80211_chanctx*) ; 
 struct ieee80211_chanctx* FUNC5 (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 struct ieee80211_chanctx* FUNC7 (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

int FUNC13(struct ieee80211_sub_if_data *sdata,
			      const struct cfg80211_chan_def *chandef,
			      enum ieee80211_chanctx_mode mode)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_chanctx *ctx;
	int ret;

	FUNC2(sdata->dev && FUNC12(sdata->dev));

	FUNC10(&local->chanctx_mtx);
	FUNC3(sdata);

	ctx = FUNC5(local, chandef, mode);
	if (!ctx)
		ctx = FUNC7(local, chandef, mode);
	if (FUNC0(ctx)) {
		ret = FUNC1(ctx);
		goto out;
	}

	sdata->vif.bss_conf.chandef = *chandef;

	ret = FUNC4(sdata, ctx);
	if (ret) {
		/* if assign fails refcount stays the same */
		if (ctx->refcount == 0)
			FUNC6(local, ctx);
		goto out;
	}

	FUNC9(local, ctx);
	FUNC8(local, ctx);
 out:
	FUNC11(&local->chanctx_mtx);
	return ret;
}