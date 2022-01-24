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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* sta_rc_update ) (int /*<<< orphan*/ *,TYPE_2__*,struct ieee80211_sta*,int) ;} ;

/* Variables and functions */
 int IEEE80211_RC_SUPP_RATES_CHANGED ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_sub_if_data* FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_sta*,int) ; 

__attribute__((used)) static inline void FUNC6(struct ieee80211_local *local,
				     struct ieee80211_sub_if_data *sdata,
				     struct ieee80211_sta *sta, u32 changed)
{
	sdata = FUNC2(sdata);
	FUNC1(sdata);

	FUNC0(changed & IEEE80211_RC_SUPP_RATES_CHANGED &&
		(sdata->vif.type != NL80211_IFTYPE_ADHOC &&
		 sdata->vif.type != NL80211_IFTYPE_MESH_POINT));

	FUNC5(local, sdata, sta, changed);
	if (local->ops->sta_rc_update)
		local->ops->sta_rc_update(&local->hw, &sdata->vif,
					  sta, changed);

	FUNC4(local);
}