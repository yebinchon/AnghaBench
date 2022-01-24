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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  tx_mcs_map; } ;
struct ieee80211_vht_cap {TYPE_2__ supp_mcs; } ;
struct ieee80211_if_managed {int flags; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct ieee80211_ht_cap {int /*<<< orphan*/  mcs; } ;
struct cfg80211_bss {int dummy; } ;

/* Variables and functions */
 int IEEE80211_STA_DISABLE_HT ; 
 int IEEE80211_STA_DISABLE_VHT ; 
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  WLAN_EID_HT_CAPABILITY ; 
 int /*<<< orphan*/  WLAN_EID_VHT_CAPABILITY ; 
 int* FUNC0 (struct cfg80211_bss*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static u8 FUNC4(struct ieee80211_sub_if_data *sdata,
				     struct cfg80211_bss *cbss)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	const u8 *ht_cap_ie, *vht_cap_ie;
	const struct ieee80211_ht_cap *ht_cap;
	const struct ieee80211_vht_cap *vht_cap;
	u8 chains = 1;

	if (ifmgd->flags & IEEE80211_STA_DISABLE_HT)
		return chains;

	ht_cap_ie = FUNC0(cbss, WLAN_EID_HT_CAPABILITY);
	if (ht_cap_ie && ht_cap_ie[1] >= sizeof(*ht_cap)) {
		ht_cap = (void *)(ht_cap_ie + 2);
		chains = FUNC1(&ht_cap->mcs);
		/*
		 * TODO: use "Tx Maximum Number Spatial Streams Supported" and
		 *	 "Tx Unequal Modulation Supported" fields.
		 */
	}

	if (ifmgd->flags & IEEE80211_STA_DISABLE_VHT)
		return chains;

	vht_cap_ie = FUNC0(cbss, WLAN_EID_VHT_CAPABILITY);
	if (vht_cap_ie && vht_cap_ie[1] >= sizeof(*vht_cap)) {
		u8 nss;
		u16 tx_mcs_map;

		vht_cap = (void *)(vht_cap_ie + 2);
		tx_mcs_map = FUNC2(vht_cap->supp_mcs.tx_mcs_map);
		for (nss = 8; nss > 0; nss--) {
			if (((tx_mcs_map >> (2 * (nss - 1))) & 3) !=
					IEEE80211_VHT_MCS_NOT_SUPPORTED)
				break;
		}
		/* TODO: use "Tx Highest Supported Long GI Data Rate" field? */
		chains = FUNC3(chains, nss);
	}

	return chains;
}