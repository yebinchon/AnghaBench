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
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct ieee80211_bss_conf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* bss_info_changed ) (int /*<<< orphan*/ *,TYPE_2__*,struct ieee80211_bss_conf*,int) ;} ;

/* Variables and functions */
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 

__attribute__((used)) static inline void FUNC6(struct ieee80211_local *local,
					struct ieee80211_sub_if_data *sdata,
					struct ieee80211_bss_conf *info,
					u32 changed)
{
	FUNC2();

	if (FUNC0(changed & (BSS_CHANGED_BEACON |
				    BSS_CHANGED_BEACON_ENABLED) &&
			 sdata->vif.type != NL80211_IFTYPE_AP &&
			 sdata->vif.type != NL80211_IFTYPE_ADHOC &&
			 sdata->vif.type != NL80211_IFTYPE_MESH_POINT))
		return;

	if (FUNC0(sdata->vif.type == NL80211_IFTYPE_P2P_DEVICE ||
			 sdata->vif.type == NL80211_IFTYPE_MONITOR))
		return;

	FUNC1(sdata);

	FUNC4(local, sdata, info, changed);
	if (local->ops->bss_info_changed)
		local->ops->bss_info_changed(&local->hw, &sdata->vif, info, changed);
	FUNC5(local);
}