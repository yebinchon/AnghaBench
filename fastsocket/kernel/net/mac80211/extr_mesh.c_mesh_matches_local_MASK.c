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
typedef  scalar_t__ u32 ;
struct ieee802_11_elems {int /*<<< orphan*/  ht_operation; TYPE_2__* mesh_config; int /*<<< orphan*/  mesh_id_len; int /*<<< orphan*/  mesh_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  chan; } ;
struct TYPE_8__ {scalar_t__ basic_rates; TYPE_5__ chandef; } ;
struct TYPE_9__ {TYPE_3__ bss_conf; } ;
struct ieee80211_if_mesh {scalar_t__ mesh_pp_id; scalar_t__ mesh_pm_id; scalar_t__ mesh_cc_id; scalar_t__ mesh_sp_id; scalar_t__ mesh_auth_id; int /*<<< orphan*/  mesh_id; int /*<<< orphan*/  mesh_id_len; } ;
struct TYPE_6__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_4__ vif; struct ieee80211_local* local; TYPE_1__ u; } ;
struct ieee80211_local {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_7__ {scalar_t__ meshconf_psel; scalar_t__ meshconf_pmetric; scalar_t__ meshconf_congest; scalar_t__ meshconf_synch; scalar_t__ meshconf_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee802_11_elems*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(struct ieee80211_sub_if_data *sdata,
			struct ieee802_11_elems *ie)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct ieee80211_local *local = sdata->local;
	u32 basic_rates = 0;
	struct cfg80211_chan_def sta_chan_def;

	/*
	 * As support for each feature is added, check for matching
	 * - On mesh config capabilities
	 *   - Power Save Support En
	 *   - Sync support enabled
	 *   - Sync support active
	 *   - Sync support required from peer
	 *   - MDA enabled
	 * - Power management control on fc
	 */
	if (!(ifmsh->mesh_id_len == ie->mesh_id_len &&
	     FUNC4(ifmsh->mesh_id, ie->mesh_id, ie->mesh_id_len) == 0 &&
	     (ifmsh->mesh_pp_id == ie->mesh_config->meshconf_psel) &&
	     (ifmsh->mesh_pm_id == ie->mesh_config->meshconf_pmetric) &&
	     (ifmsh->mesh_cc_id == ie->mesh_config->meshconf_congest) &&
	     (ifmsh->mesh_sp_id == ie->mesh_config->meshconf_synch) &&
	     (ifmsh->mesh_auth_id == ie->mesh_config->meshconf_auth)))
		return false;

	FUNC3(local, ie, FUNC1(sdata),
				&basic_rates);

	if (sdata->vif.bss_conf.basic_rates != basic_rates)
		return false;

	FUNC2(sdata->vif.bss_conf.chandef.chan,
				     ie->ht_operation, &sta_chan_def);

	if (!FUNC0(&sdata->vif.bss_conf.chandef,
					 &sta_chan_def))
		return false;

	return true;
}