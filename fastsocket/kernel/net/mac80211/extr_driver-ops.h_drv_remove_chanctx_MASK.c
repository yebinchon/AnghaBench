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
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct ieee80211_chanctx {int driver_present; int /*<<< orphan*/  conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove_chanctx ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*) ; 

__attribute__((used)) static inline void FUNC3(struct ieee80211_local *local,
				      struct ieee80211_chanctx *ctx)
{
	FUNC1(local, ctx);
	if (local->ops->remove_chanctx)
		local->ops->remove_chanctx(&local->hw, &ctx->conf);
	FUNC2(local);
	ctx->driver_present = false;
}