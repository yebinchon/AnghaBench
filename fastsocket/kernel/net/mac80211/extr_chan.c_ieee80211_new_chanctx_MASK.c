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
typedef  scalar_t__ u32 ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  radar_enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; scalar_t__ chanctx_data_size; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  chanctx_list; struct cfg80211_chan_def _oper_chandef; int /*<<< orphan*/  use_chanctx; TYPE_2__ hw; int /*<<< orphan*/  chanctx_mtx; } ;
struct TYPE_6__ {int rx_chains_static; int rx_chains_dynamic; int /*<<< orphan*/  radar_enabled; struct cfg80211_chan_def def; } ;
struct ieee80211_chanctx {int mode; int /*<<< orphan*/  list; TYPE_3__ conf; } ;
typedef  enum ieee80211_chanctx_mode { ____Placeholder_ieee80211_chanctx_mode } ieee80211_chanctx_mode ;

/* Variables and functions */
 int ENOMEM ; 
 struct ieee80211_chanctx* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_chanctx*) ; 
 struct ieee80211_chanctx* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ieee80211_chanctx *
FUNC12(struct ieee80211_local *local,
		      const struct cfg80211_chan_def *chandef,
		      enum ieee80211_chanctx_mode mode)
{
	struct ieee80211_chanctx *ctx;
	u32 changed;
	int err;

	FUNC9(&local->chanctx_mtx);

	ctx = FUNC7(sizeof(*ctx) + local->hw.chanctx_data_size, GFP_KERNEL);
	if (!ctx)
		return FUNC0(-ENOMEM);

	ctx->conf.def = *chandef;
	ctx->conf.rx_chains_static = 1;
	ctx->conf.rx_chains_dynamic = 1;
	ctx->mode = mode;
	ctx->conf.radar_enabled = FUNC4(local);
	if (!local->use_chanctx)
		local->hw.conf.radar_enabled = ctx->conf.radar_enabled;

	/* acquire mutex to prevent idle from changing */
	FUNC10(&local->mtx);
	/* turn idle off *before* setting channel -- some drivers need that */
	changed = FUNC3(local);
	if (changed)
		FUNC2(local, changed);

	if (!local->use_chanctx) {
		local->_oper_chandef = *chandef;
		FUNC2(local, 0);
	} else {
		err = FUNC1(local, ctx);
		if (err) {
			FUNC6(ctx);
			ctx = FUNC0(err);

			FUNC5(local);
			goto out;
		}
	}

	/* and keep the mutex held until the new chanctx is on the list */
	FUNC8(&ctx->list, &local->chanctx_list);

 out:
	FUNC11(&local->mtx);

	return ctx;
}