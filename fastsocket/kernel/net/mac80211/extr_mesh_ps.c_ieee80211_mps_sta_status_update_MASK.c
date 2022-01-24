#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
struct sta_info {scalar_t__ plink_state; scalar_t__ peer_pm; int nonpeer_pm; TYPE_4__ sta; TYPE_5__* sdata; } ;
typedef  enum nl80211_mesh_power_mode { ____Placeholder_nl80211_mesh_power_mode } nl80211_mesh_power_mode ;
struct TYPE_6__ {int /*<<< orphan*/  num_sta_ps; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__ mesh; } ;
struct TYPE_10__ {TYPE_3__ u; } ;

/* Variables and functions */
 int NL80211_MESH_POWER_ACTIVE ; 
 scalar_t__ NL80211_MESH_POWER_UNKNOWN ; 
 scalar_t__ NL80211_PLINK_ESTAB ; 
 int /*<<< orphan*/  WLAN_STA_MPSP_OWNER ; 
 int /*<<< orphan*/  WLAN_STA_MPSP_RECIPIENT ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sta_info*,int /*<<< orphan*/ ) ; 

void FUNC6(struct sta_info *sta)
{
	enum nl80211_mesh_power_mode pm;
	bool do_buffer;

	/*
	 * use peer-specific power mode if peering is established and the
	 * peer's power mode is known
	 */
	if (sta->plink_state == NL80211_PLINK_ESTAB &&
	    sta->peer_pm != NL80211_MESH_POWER_UNKNOWN)
		pm = sta->peer_pm;
	else
		pm = sta->nonpeer_pm;

	do_buffer = (pm != NL80211_MESH_POWER_ACTIVE);

	/* Don't let the same PS state be set twice */
	if (FUNC5(sta, WLAN_STA_PS_STA) == do_buffer)
		return;

	if (do_buffer) {
		FUNC4(sta, WLAN_STA_PS_STA);
		FUNC0(&sta->sdata->u.mesh.ps.num_sta_ps);
		FUNC3(sta->sdata, "start PS buffering frames towards %pM\n",
			sta->sta.addr);
	} else {
		FUNC2(sta);
	}

	/* clear the MPSP flags for non-peers or active STA */
	if (sta->plink_state != NL80211_PLINK_ESTAB) {
		FUNC1(sta, WLAN_STA_MPSP_OWNER);
		FUNC1(sta, WLAN_STA_MPSP_RECIPIENT);
	} else if (!do_buffer) {
		FUNC1(sta, WLAN_STA_MPSP_OWNER);
	}
}