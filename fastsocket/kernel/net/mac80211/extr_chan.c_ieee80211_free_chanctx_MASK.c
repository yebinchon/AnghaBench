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
struct TYPE_5__ {int radar_enabled; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;
struct cfg80211_chan_def {scalar_t__ center_freq2; TYPE_1__* chan; int /*<<< orphan*/  center_freq1; int /*<<< orphan*/  width; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  chanctx_list; TYPE_3__ hw; struct cfg80211_chan_def _oper_chandef; int /*<<< orphan*/  use_chanctx; int /*<<< orphan*/  chanctx_mtx; } ;
struct ieee80211_chanctx {scalar_t__ refcount; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_CHAN_WIDTH_20_NOHT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_chanctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC11(struct ieee80211_local *local,
				   struct ieee80211_chanctx *ctx)
{
	bool check_single_channel = false;
	FUNC8(&local->chanctx_mtx);

	FUNC1(ctx->refcount != 0);

	if (!local->use_chanctx) {
		struct cfg80211_chan_def *chandef = &local->_oper_chandef;
		chandef->width = NL80211_CHAN_WIDTH_20_NOHT;
		chandef->center_freq1 = chandef->chan->center_freq;
		chandef->center_freq2 = 0;

		/* NOTE: Disabling radar is only valid here for
		 * single channel context. To be sure, check it ...
		 */
		if (local->hw.conf.radar_enabled)
			check_single_channel = true;
		local->hw.conf.radar_enabled = false;

		FUNC3(local, 0);
	} else {
		FUNC2(local, ctx);
	}

	FUNC6(&ctx->list);
	FUNC5(ctx, rcu_head);

	/* throw a warning if this wasn't the only channel context. */
	FUNC0(check_single_channel && !FUNC7(&local->chanctx_list));

	FUNC9(&local->mtx);
	FUNC4(local);
	FUNC10(&local->mtx);
}