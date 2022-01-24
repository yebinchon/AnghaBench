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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  reason; int /*<<< orphan*/  plid; int /*<<< orphan*/  llid; TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_REASON_MESH_PEER_CANCELED ; 
 int /*<<< orphan*/  WLAN_SP_MESH_PEERING_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u32 FUNC5(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	u32 changed;

	FUNC3(&sta->lock);
	changed = FUNC0(sta);
	sta->reason = FUNC1(WLAN_REASON_MESH_PEER_CANCELED);
	FUNC2(sdata, WLAN_SP_MESH_PEERING_CLOSE,
			    sta->sta.addr, sta->llid, sta->plid,
			    sta->reason);
	FUNC4(&sta->lock);

	return changed;
}