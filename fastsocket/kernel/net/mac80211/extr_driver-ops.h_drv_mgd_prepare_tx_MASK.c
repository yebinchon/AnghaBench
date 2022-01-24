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
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* mgd_prepare_tx ) (int /*<<< orphan*/ *,TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 

__attribute__((used)) static inline void FUNC6(struct ieee80211_local *local,
				      struct ieee80211_sub_if_data *sdata)
{
	FUNC2();

	FUNC1(sdata);
	FUNC0(sdata->vif.type != NL80211_IFTYPE_STATION);

	FUNC4(local, sdata);
	if (local->ops->mgd_prepare_tx)
		local->ops->mgd_prepare_tx(&local->hw, &sdata->vif);
	FUNC5(local);
}