#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct sta_info {int dummy; } ;
struct net_device {int dummy; } ;
struct key_params {int cipher; int /*<<< orphan*/  seq; int /*<<< orphan*/  seq_len; int /*<<< orphan*/  key; int /*<<< orphan*/  key_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  security; } ;
struct TYPE_7__ {int /*<<< orphan*/  mfp; } ;
struct TYPE_9__ {TYPE_2__ mesh; TYPE_1__ mgd; } ;
struct TYPE_12__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_5__* local; TYPE_3__ u; TYPE_6__ vif; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct ieee80211_key {TYPE_4__ conf; struct sta_info* sta; } ;
struct TYPE_11__ {int /*<<< orphan*/  sta_mtx; struct ieee80211_key* wep_tx_tfm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int ENOENT ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  IEEE80211_KEY_FLAG_PAIRWISE ; 
 int /*<<< orphan*/  IEEE80211_KEY_FLAG_RX_MGMT ; 
 int /*<<< orphan*/  IEEE80211_MESH_SEC_NONE ; 
 int /*<<< orphan*/  IEEE80211_MFP_DISABLED ; 
 scalar_t__ FUNC1 (struct ieee80211_key*) ; 
#define  NL80211_IFTYPE_ADHOC 142 
#define  NL80211_IFTYPE_AP 141 
#define  NL80211_IFTYPE_AP_VLAN 140 
#define  NL80211_IFTYPE_MESH_POINT 139 
#define  NL80211_IFTYPE_MONITOR 138 
#define  NL80211_IFTYPE_P2P_CLIENT 137 
#define  NL80211_IFTYPE_P2P_DEVICE 136 
#define  NL80211_IFTYPE_P2P_GO 135 
#define  NL80211_IFTYPE_STATION 134 
#define  NL80211_IFTYPE_UNSPECIFIED 133 
#define  NL80211_IFTYPE_WDS 132 
#define  NUM_NL80211_IFTYPES 131 
 int FUNC2 (struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int /*<<< orphan*/  WLAN_STA_ASSOC ; 
 int /*<<< orphan*/  WLAN_STA_MFP ; 
 struct ieee80211_key* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_key*) ; 
 int FUNC6 (struct ieee80211_key*,struct ieee80211_sub_if_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC11 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 struct sta_info* FUNC12 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct wiphy *wiphy, struct net_device *dev,
			     u8 key_idx, bool pairwise, const u8 *mac_addr,
			     struct key_params *params)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct sta_info *sta = NULL;
	struct ieee80211_key *key;
	int err;

	if (!FUNC7(sdata))
		return -ENETDOWN;

	/* reject WEP and TKIP keys if WEP failed to initialize */
	switch (params->cipher) {
	case WLAN_CIPHER_SUITE_WEP40:
	case WLAN_CIPHER_SUITE_TKIP:
	case WLAN_CIPHER_SUITE_WEP104:
		if (FUNC1(sdata->local->wep_tx_tfm))
			return -EINVAL;
		break;
	default:
		break;
	}

	key = FUNC4(params->cipher, key_idx, params->key_len,
				  params->key, params->seq_len, params->seq);
	if (FUNC1(key))
		return FUNC2(key);

	if (pairwise)
		key->conf.flags |= IEEE80211_KEY_FLAG_PAIRWISE;

	FUNC9(&sdata->local->sta_mtx);

	if (mac_addr) {
		if (FUNC8(&sdata->vif))
			sta = FUNC11(sdata, mac_addr);
		else
			sta = FUNC12(sdata, mac_addr);
		/*
		 * The ASSOC test makes sure the driver is ready to
		 * receive the key. When wpa_supplicant has roamed
		 * using FT, it attempts to set the key before
		 * association has completed, this rejects that attempt
		 * so it will set the key again after assocation.
		 *
		 * TODO: accept the key if we have a station entry and
		 *       add it to the device after the station.
		 */
		if (!sta || !FUNC13(sta, WLAN_STA_ASSOC)) {
			FUNC5(key);
			err = -ENOENT;
			goto out_unlock;
		}
	}

	switch (sdata->vif.type) {
	case NL80211_IFTYPE_STATION:
		if (sdata->u.mgd.mfp != IEEE80211_MFP_DISABLED)
			key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;
		break;
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_AP_VLAN:
		/* Keys without a station are used for TX only */
		if (key->sta && FUNC13(key->sta, WLAN_STA_MFP))
			key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;
		break;
	case NL80211_IFTYPE_ADHOC:
		/* no MFP (yet) */
		break;
	case NL80211_IFTYPE_MESH_POINT:
#ifdef CONFIG_MAC80211_MESH
		if (sdata->u.mesh.security != IEEE80211_MESH_SEC_NONE)
			key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;
		break;
#endif
	case NL80211_IFTYPE_WDS:
	case NL80211_IFTYPE_MONITOR:
	case NL80211_IFTYPE_P2P_DEVICE:
	case NL80211_IFTYPE_UNSPECIFIED:
	case NUM_NL80211_IFTYPES:
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_P2P_GO:
		/* shouldn't happen */
		FUNC3(1);
		break;
	}

	err = FUNC6(key, sdata, sta);

 out_unlock:
	FUNC10(&sdata->local->sta_mtx);

	return err;
}