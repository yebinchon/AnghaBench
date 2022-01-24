#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_9__ {scalar_t__ chan; int /*<<< orphan*/  width; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ ssid_len; int /*<<< orphan*/  ssid; scalar_t__ channel; void* beacon_interval; TYPE_3__ preset_chandef; int /*<<< orphan*/  wiphy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int features; } ;
struct net_device {TYPE_2__ wiphy; int /*<<< orphan*/  devlist_mtx; struct wireless_dev* ieee80211_ptr; TYPE_1__* ops; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; int /*<<< orphan*/  devlist_mtx; struct wireless_dev* ieee80211_ptr; TYPE_1__* ops; } ;
struct cfg80211_ap_settings {scalar_t__ ssid_len; scalar_t__ hidden_ssid; int privacy; int p2p_ctwindow; int p2p_opp_ps; int radar_required; int /*<<< orphan*/  acl; int /*<<< orphan*/  ssid; TYPE_3__ chandef; void* beacon_interval; int /*<<< orphan*/  inactivity_timeout; int /*<<< orphan*/  crypto; void* auth_type; void* dtim_period; int /*<<< orphan*/  beacon; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_7__ {int /*<<< orphan*/  start_ap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAN_MODE_SHARED ; 
 int EALREADY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ IEEE80211_MAX_SSID_LEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t NL80211_ATTR_ACL_POLICY ; 
 size_t NL80211_ATTR_AUTH_TYPE ; 
 size_t NL80211_ATTR_BEACON_HEAD ; 
 size_t NL80211_ATTR_BEACON_INTERVAL ; 
 size_t NL80211_ATTR_DTIM_PERIOD ; 
 size_t NL80211_ATTR_HIDDEN_SSID ; 
 size_t NL80211_ATTR_INACTIVITY_TIMEOUT ; 
 size_t NL80211_ATTR_P2P_CTWINDOW ; 
 size_t NL80211_ATTR_P2P_OPPPS ; 
 size_t NL80211_ATTR_PRIVACY ; 
 size_t NL80211_ATTR_SSID ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
 void* NL80211_AUTHTYPE_AUTOMATIC ; 
 int /*<<< orphan*/  NL80211_CMD_START_AP ; 
 int NL80211_FEATURE_INACTIVITY_TIMER ; 
 int NL80211_FEATURE_P2P_GO_CTWIN ; 
 int NL80211_FEATURE_P2P_GO_OPPPS ; 
 scalar_t__ NL80211_HIDDEN_SSID_NOT_IN_USE ; 
 scalar_t__ NL80211_HIDDEN_SSID_ZERO_CONTENTS ; 
 scalar_t__ NL80211_HIDDEN_SSID_ZERO_LEN ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int /*<<< orphan*/  NL80211_MAX_NR_CIPHER_SUITES ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,struct wireless_dev*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC6 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct cfg80211_ap_settings*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct net_device*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,struct cfg80211_ap_settings*) ; 
 int FUNC14 (struct genl_info*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct net_device*,struct genl_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 void* FUNC19 (scalar_t__) ; 
 void* FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,struct genl_info*) ; 
 int FUNC23 (struct net_device*,struct net_device*,struct cfg80211_ap_settings*) ; 

__attribute__((used)) static int FUNC24(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_ap_settings params;
	int err;
	u8 radar_detect_width = 0;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
		return -EOPNOTSUPP;

	if (!rdev->ops->start_ap)
		return -EOPNOTSUPP;

	if (wdev->beacon_interval)
		return -EALREADY;

	FUNC9(&params, 0, sizeof(params));

	/* these are required for START_AP */
	if (!info->attrs[NL80211_ATTR_BEACON_INTERVAL] ||
	    !info->attrs[NL80211_ATTR_DTIM_PERIOD] ||
	    !info->attrs[NL80211_ATTR_BEACON_HEAD])
		return -EINVAL;

	err = FUNC14(info, &params.beacon);
	if (err)
		return err;

	params.beacon_interval =
		FUNC19(info->attrs[NL80211_ATTR_BEACON_INTERVAL]);
	params.dtim_period =
		FUNC19(info->attrs[NL80211_ATTR_DTIM_PERIOD]);

	err = FUNC6(rdev, params.beacon_interval);
	if (err)
		return err;

	/*
	 * In theory, some of these attributes should be required here
	 * but since they were not used when the command was originally
	 * added, keep them optional for old user space programs to let
	 * them continue to work with drivers that do not need the
	 * additional information -- drivers must check!
	 */
	if (info->attrs[NL80211_ATTR_SSID]) {
		params.ssid = FUNC17(info->attrs[NL80211_ATTR_SSID]);
		params.ssid_len =
			FUNC21(info->attrs[NL80211_ATTR_SSID]);
		if (params.ssid_len == 0 ||
		    params.ssid_len > IEEE80211_MAX_SSID_LEN)
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_HIDDEN_SSID]) {
		params.hidden_ssid = FUNC19(
			info->attrs[NL80211_ATTR_HIDDEN_SSID]);
		if (params.hidden_ssid != NL80211_HIDDEN_SSID_NOT_IN_USE &&
		    params.hidden_ssid != NL80211_HIDDEN_SSID_ZERO_LEN &&
		    params.hidden_ssid != NL80211_HIDDEN_SSID_ZERO_CONTENTS)
			return -EINVAL;
	}

	params.privacy = !!info->attrs[NL80211_ATTR_PRIVACY];

	if (info->attrs[NL80211_ATTR_AUTH_TYPE]) {
		params.auth_type = FUNC19(
			info->attrs[NL80211_ATTR_AUTH_TYPE]);
		if (!FUNC16(rdev, params.auth_type,
					     NL80211_CMD_START_AP))
			return -EINVAL;
	} else
		params.auth_type = NL80211_AUTHTYPE_AUTOMATIC;

	err = FUNC12(rdev, info, &params.crypto,
				      NL80211_MAX_NR_CIPHER_SUITES);
	if (err)
		return err;

	if (info->attrs[NL80211_ATTR_INACTIVITY_TIMEOUT]) {
		if (!(rdev->wiphy.features & NL80211_FEATURE_INACTIVITY_TIMER))
			return -EOPNOTSUPP;
		params.inactivity_timeout = FUNC18(
			info->attrs[NL80211_ATTR_INACTIVITY_TIMEOUT]);
	}

	if (info->attrs[NL80211_ATTR_P2P_CTWINDOW]) {
		if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
			return -EINVAL;
		params.p2p_ctwindow =
			FUNC20(info->attrs[NL80211_ATTR_P2P_CTWINDOW]);
		if (params.p2p_ctwindow > 127)
			return -EINVAL;
		if (params.p2p_ctwindow != 0 &&
		    !(rdev->wiphy.features & NL80211_FEATURE_P2P_GO_CTWIN))
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_P2P_OPPPS]) {
		u8 tmp;

		if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
			return -EINVAL;
		tmp = FUNC20(info->attrs[NL80211_ATTR_P2P_OPPPS]);
		if (tmp > 1)
			return -EINVAL;
		params.p2p_opp_ps = tmp;
		if (params.p2p_opp_ps != 0 &&
		    !(rdev->wiphy.features & NL80211_FEATURE_P2P_GO_OPPPS))
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_WIPHY_FREQ]) {
		err = FUNC15(rdev, info, &params.chandef);
		if (err)
			return err;
	} else if (wdev->preset_chandef.chan) {
		params.chandef = wdev->preset_chandef;
	} else if (!FUNC13(rdev, &params))
		return -EINVAL;

	if (!FUNC5(&rdev->wiphy, &params.chandef))
		return -EINVAL;

	err = FUNC4(wdev->wiphy, &params.chandef);
	if (err < 0)
		return err;
	if (err) {
		radar_detect_width = FUNC0(params.chandef.width);
		params.radar_required = true;
	}

	FUNC10(&rdev->devlist_mtx);
	err = FUNC3(rdev, wdev, wdev->iftype,
					   params.chandef.chan,
					   CHAN_MODE_SHARED,
					   radar_detect_width);
	FUNC11(&rdev->devlist_mtx);

	if (err)
		return err;

	if (info->attrs[NL80211_ATTR_ACL_POLICY]) {
		params.acl = FUNC22(&rdev->wiphy, info);
		if (FUNC1(params.acl))
			return FUNC2(params.acl);
	}

	err = FUNC23(rdev, dev, &params);
	if (!err) {
		wdev->preset_chandef = params.chandef;
		wdev->beacon_interval = params.beacon_interval;
		wdev->channel = params.chandef.chan;
		wdev->ssid_len = params.ssid_len;
		FUNC8(wdev->ssid, params.ssid, wdev->ssid_len);
	}

	FUNC7(params.acl);

	return err;
}