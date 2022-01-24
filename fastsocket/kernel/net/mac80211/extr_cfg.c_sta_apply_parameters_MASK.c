#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct station_parameters {int sta_flags_mask; int sta_flags_set; int sta_modify_mask; scalar_t__ listen_interval; int* supported_rates; int supported_rates_len; int plink_state; int plink_action; scalar_t__ local_pm; int /*<<< orphan*/  vht_capa; int /*<<< orphan*/  ht_capa; scalar_t__ aid; int /*<<< orphan*/  max_sp; int /*<<< orphan*/  uapsd_queues; } ;
struct TYPE_11__ {int wme; int* supp_rates; scalar_t__ aid; int /*<<< orphan*/  max_sp; int /*<<< orphan*/  uapsd_queues; } ;
struct sta_info {scalar_t__ listen_interval; int const plink_state; TYPE_4__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_3__* bitrates; } ;
struct TYPE_12__ {scalar_t__ power_mode; } ;
struct TYPE_13__ {TYPE_5__ mshcfg; } ;
struct TYPE_14__ {TYPE_6__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_7__ u; int /*<<< orphan*/  vif; } ;
struct TYPE_9__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_10__ {int bitrate; } ;
struct TYPE_8__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  NL80211_PLINK_ACTION_BLOCK 137 
#define  NL80211_PLINK_ACTION_NO_ACTION 136 
#define  NL80211_PLINK_ACTION_OPEN 135 
#define  NL80211_PLINK_BLOCKED 134 
#define  NL80211_PLINK_CNF_RCVD 133 
#define  NL80211_PLINK_ESTAB 132 
#define  NL80211_PLINK_HOLDING 131 
#define  NL80211_PLINK_LISTEN 130 
#define  NL80211_PLINK_OPN_RCVD 129 
#define  NL80211_PLINK_OPN_SNT 128 
 int NL80211_STA_FLAG_ASSOCIATED ; 
 int NL80211_STA_FLAG_AUTHENTICATED ; 
 int NL80211_STA_FLAG_AUTHORIZED ; 
 int NL80211_STA_FLAG_MFP ; 
 int NL80211_STA_FLAG_SHORT_PREAMBLE ; 
 int NL80211_STA_FLAG_TDLS_PEER ; 
 int NL80211_STA_FLAG_WME ; 
 int STATION_PARAM_APPLY_PLINK_STATE ; 
 int STATION_PARAM_APPLY_UAPSD ; 
 int /*<<< orphan*/  WLAN_STA_MFP ; 
 int /*<<< orphan*/  WLAN_STA_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_PEER ; 
 int /*<<< orphan*/  WLAN_STA_WME ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 
 int FUNC3 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int /*<<< orphan*/ ,struct sta_info*) ; 
 int FUNC5 (struct ieee80211_sub_if_data*) ; 
 int FUNC6 (struct sta_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int /*<<< orphan*/ ,struct sta_info*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sta_info*) ; 
 int FUNC11 (struct ieee80211_sub_if_data*) ; 
 int FUNC12 (struct ieee80211_sub_if_data*) ; 
 int FUNC13 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ieee80211_local*,struct sta_info*,int,int) ; 
 scalar_t__ FUNC16 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct ieee80211_local *local,
				struct sta_info *sta,
				struct station_parameters *params)
{
	int ret = 0;
	u32 rates;
	int i, j;
	struct ieee80211_supported_band *sband;
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	enum ieee80211_band band = FUNC3(sdata);
	u32 mask, set;

	sband = local->hw.wiphy->bands[band];

	mask = params->sta_flags_mask;
	set = params->sta_flags_set;

	if (FUNC9(&sdata->vif)) {
		/*
		 * In mesh mode, ASSOCIATED isn't part of the nl80211
		 * API but must follow AUTHENTICATED for driver state.
		 */
		if (mask & FUNC0(NL80211_STA_FLAG_AUTHENTICATED))
			mask |= FUNC0(NL80211_STA_FLAG_ASSOCIATED);
		if (set & FUNC0(NL80211_STA_FLAG_AUTHENTICATED))
			set |= FUNC0(NL80211_STA_FLAG_ASSOCIATED);
	} else if (FUNC16(sta, WLAN_STA_TDLS_PEER)) {
		/*
		 * TDLS -- everything follows authorized, but
		 * only becoming authorized is possible, not
		 * going back
		 */
		if (set & FUNC0(NL80211_STA_FLAG_AUTHORIZED)) {
			set |= FUNC0(NL80211_STA_FLAG_AUTHENTICATED) |
			       FUNC0(NL80211_STA_FLAG_ASSOCIATED);
			mask |= FUNC0(NL80211_STA_FLAG_AUTHENTICATED) |
				FUNC0(NL80211_STA_FLAG_ASSOCIATED);
		}
	}

	ret = FUNC15(local, sta, mask, set);
	if (ret)
		return ret;

	if (mask & FUNC0(NL80211_STA_FLAG_SHORT_PREAMBLE)) {
		if (set & FUNC0(NL80211_STA_FLAG_SHORT_PREAMBLE))
			FUNC14(sta, WLAN_STA_SHORT_PREAMBLE);
		else
			FUNC1(sta, WLAN_STA_SHORT_PREAMBLE);
	}

	if (mask & FUNC0(NL80211_STA_FLAG_WME)) {
		if (set & FUNC0(NL80211_STA_FLAG_WME)) {
			FUNC14(sta, WLAN_STA_WME);
			sta->sta.wme = true;
		} else {
			FUNC1(sta, WLAN_STA_WME);
			sta->sta.wme = false;
		}
	}

	if (mask & FUNC0(NL80211_STA_FLAG_MFP)) {
		if (set & FUNC0(NL80211_STA_FLAG_MFP))
			FUNC14(sta, WLAN_STA_MFP);
		else
			FUNC1(sta, WLAN_STA_MFP);
	}

	if (mask & FUNC0(NL80211_STA_FLAG_TDLS_PEER)) {
		if (set & FUNC0(NL80211_STA_FLAG_TDLS_PEER))
			FUNC14(sta, WLAN_STA_TDLS_PEER);
		else
			FUNC1(sta, WLAN_STA_TDLS_PEER);
	}

	if (params->sta_modify_mask & STATION_PARAM_APPLY_UAPSD) {
		sta->sta.uapsd_queues = params->uapsd_queues;
		sta->sta.max_sp = params->max_sp;
	}

	/*
	 * cfg80211 validates this (1-2007) and allows setting the AID
	 * only when creating a new station entry
	 */
	if (params->aid)
		sta->sta.aid = params->aid;

	/*
	 * Some of the following updates would be racy if called on an
	 * existing station, via ieee80211_change_station(). However,
	 * all such changes are rejected by cfg80211 except for updates
	 * changing the supported rates on an existing but not yet used
	 * TDLS peer.
	 */

	if (params->listen_interval >= 0)
		sta->listen_interval = params->listen_interval;

	if (params->supported_rates) {
		rates = 0;

		for (i = 0; i < params->supported_rates_len; i++) {
			int rate = (params->supported_rates[i] & 0x7f) * 5;
			for (j = 0; j < sband->n_bitrates; j++) {
				if (sband->bitrates[j].bitrate == rate)
					rates |= FUNC0(j);
			}
		}
		sta->sta.supp_rates[band] = rates;
	}

	if (params->ht_capa)
		FUNC4(sdata, sband,
						  params->ht_capa, sta);

	if (params->vht_capa)
		FUNC8(sdata, sband,
						    params->vht_capa, sta);

	if (FUNC9(&sdata->vif)) {
#ifdef CONFIG_MAC80211_MESH
		u32 changed = 0;

		if (params->sta_modify_mask & STATION_PARAM_APPLY_PLINK_STATE) {
			switch (params->plink_state) {
			case NL80211_PLINK_ESTAB:
				if (sta->plink_state != NL80211_PLINK_ESTAB)
					changed = mesh_plink_inc_estab_count(
							sdata);
				sta->plink_state = params->plink_state;

				ieee80211_mps_sta_status_update(sta);
				changed |= ieee80211_mps_set_sta_local_pm(sta,
					      sdata->u.mesh.mshcfg.power_mode);
				break;
			case NL80211_PLINK_LISTEN:
			case NL80211_PLINK_BLOCKED:
			case NL80211_PLINK_OPN_SNT:
			case NL80211_PLINK_OPN_RCVD:
			case NL80211_PLINK_CNF_RCVD:
			case NL80211_PLINK_HOLDING:
				if (sta->plink_state == NL80211_PLINK_ESTAB)
					changed = mesh_plink_dec_estab_count(
							sdata);
				sta->plink_state = params->plink_state;

				ieee80211_mps_sta_status_update(sta);
				changed |=
				      ieee80211_mps_local_status_update(sdata);
				break;
			default:
				/*  nothing  */
				break;
			}
		}

		switch (params->plink_action) {
		case NL80211_PLINK_ACTION_NO_ACTION:
			/* nothing */
			break;
		case NL80211_PLINK_ACTION_OPEN:
			changed |= mesh_plink_open(sta);
			break;
		case NL80211_PLINK_ACTION_BLOCK:
			changed |= mesh_plink_block(sta);
			break;
		}

		if (params->local_pm)
			changed |=
			      ieee80211_mps_set_sta_local_pm(sta,
							     params->local_pm);
		ieee80211_bss_info_change_notify(sdata, changed);
#endif
	}

	return 0;
}