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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct station_parameters {int sta_flags_set; struct net_device* vlan; } ;
struct sta_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ieee80211_sub_if_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  IEEE80211_STA_ASSOC ; 
 int /*<<< orphan*/  IEEE80211_STA_AUTH ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_TDLS_PEER ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_PEER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct ieee80211_local*,struct sta_info*,struct station_parameters*) ; 
 struct sta_info* FUNC8 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_local*,struct sta_info*) ; 
 int FUNC10 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sta_info*,int /*<<< orphan*/ ) ; 
 struct ieee80211_local* FUNC13 (struct wiphy*) ; 

__attribute__((used)) static int FUNC14(struct wiphy *wiphy, struct net_device *dev,
				 u8 *mac, struct station_parameters *params)
{
	struct ieee80211_local *local = FUNC13(wiphy);
	struct sta_info *sta;
	struct ieee80211_sub_if_data *sdata;
	int err;
	int layer2_update;

	if (params->vlan) {
		sdata = FUNC1(params->vlan);

		if (sdata->vif.type != NL80211_IFTYPE_AP_VLAN &&
		    sdata->vif.type != NL80211_IFTYPE_AP)
			return -EINVAL;
	} else
		sdata = FUNC1(dev);

	if (FUNC2(mac, sdata->vif.addr))
		return -EINVAL;

	if (FUNC4(mac))
		return -EINVAL;

	sta = FUNC8(sdata, mac, GFP_KERNEL);
	if (!sta)
		return -ENOMEM;

	/*
	 * defaults -- if userspace wants something else we'll
	 * change it accordingly in sta_apply_parameters()
	 */
	if (!(params->sta_flags_set & FUNC0(NL80211_STA_FLAG_TDLS_PEER))) {
		FUNC11(sta, IEEE80211_STA_AUTH);
		FUNC11(sta, IEEE80211_STA_ASSOC);
	}

	err = FUNC7(local, sta, params);
	if (err) {
		FUNC9(local, sta);
		return err;
	}

	/*
	 * for TDLS, rate control should be initialized only when
	 * rates are known and station is marked authorized
	 */
	if (!FUNC12(sta, WLAN_STA_TDLS_PEER))
		FUNC5(sta);

	layer2_update = sdata->vif.type == NL80211_IFTYPE_AP_VLAN ||
		sdata->vif.type == NL80211_IFTYPE_AP;

	err = FUNC10(sta);
	if (err) {
		FUNC6();
		return err;
	}

	if (layer2_update)
		FUNC3(sta);

	FUNC6();

	return 0;
}