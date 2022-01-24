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
struct wiphy {int flags; } ;
struct sk_buff {int dummy; } ;
struct net_device {struct wiphy wiphy; TYPE_1__* ieee80211_ptr; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {struct wiphy wiphy; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_connect_params {int bg_scan_period; scalar_t__ mfp; int /*<<< orphan*/  vht_capa; int /*<<< orphan*/  vht_capa_mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  ht_capa; int /*<<< orphan*/  ht_capa_mask; scalar_t__ privacy; TYPE_2__* channel; void* ie_len; void* ie; void* ssid_len; void* ssid; void* bssid; int /*<<< orphan*/  crypto; void* auth_type; } ;
struct cfg80211_cached_keys {int dummy; } ;
typedef  int /*<<< orphan*/  connect ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ iftype; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_REQ_DISABLE_HT ; 
 int /*<<< orphan*/  ASSOC_REQ_DISABLE_VHT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IEEE80211_CHAN_DISABLED ; 
 scalar_t__ FUNC0 (struct cfg80211_cached_keys*) ; 
 size_t NL80211_ATTR_AUTH_TYPE ; 
 size_t NL80211_ATTR_BG_SCAN_PERIOD ; 
 size_t NL80211_ATTR_DISABLE_HT ; 
 size_t NL80211_ATTR_DISABLE_VHT ; 
 size_t NL80211_ATTR_HT_CAPABILITY ; 
 size_t NL80211_ATTR_HT_CAPABILITY_MASK ; 
 size_t NL80211_ATTR_IE ; 
 size_t NL80211_ATTR_KEYS ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_PRIVACY ; 
 size_t NL80211_ATTR_SSID ; 
 size_t NL80211_ATTR_USE_MFP ; 
 size_t NL80211_ATTR_VHT_CAPABILITY ; 
 size_t NL80211_ATTR_VHT_CAPABILITY_MASK ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
 void* NL80211_AUTHTYPE_AUTOMATIC ; 
 int /*<<< orphan*/  NL80211_CMD_CONNECT ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_MAX_NR_CIPHER_SUITES ; 
 scalar_t__ NL80211_MFP_NO ; 
 scalar_t__ NL80211_MFP_REQUIRED ; 
 int FUNC1 (struct cfg80211_cached_keys*) ; 
 int WIPHY_FLAG_SUPPORTS_FW_ROAM ; 
 int FUNC2 (struct net_device*,struct net_device*,struct cfg80211_connect_params*,struct cfg80211_cached_keys*) ; 
 TYPE_2__* FUNC3 (struct wiphy*,void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_cached_keys*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_connect_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct net_device*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cfg80211_cached_keys* FUNC9 (struct net_device*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__) ; 
 void* FUNC14 (scalar_t__) ; 
 void* FUNC15 (scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct cfg80211_connect_params connect;
	struct wiphy *wiphy;
	struct cfg80211_cached_keys *connkeys = NULL;
	int err;

	FUNC7(&connect, 0, sizeof(connect));

	if (!FUNC4(info->attrs[NL80211_ATTR_IE]))
		return -EINVAL;

	if (!info->attrs[NL80211_ATTR_SSID] ||
	    !FUNC15(info->attrs[NL80211_ATTR_SSID]))
		return -EINVAL;

	if (info->attrs[NL80211_ATTR_AUTH_TYPE]) {
		connect.auth_type =
			FUNC14(info->attrs[NL80211_ATTR_AUTH_TYPE]);
		if (!FUNC10(rdev, connect.auth_type,
					     NL80211_CMD_CONNECT))
			return -EINVAL;
	} else
		connect.auth_type = NL80211_AUTHTYPE_AUTOMATIC;

	connect.privacy = info->attrs[NL80211_ATTR_PRIVACY];

	err = FUNC8(rdev, info, &connect.crypto,
				      NL80211_MAX_NR_CIPHER_SUITES);
	if (err)
		return err;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_STATION &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_CLIENT)
		return -EOPNOTSUPP;

	wiphy = &rdev->wiphy;

	connect.bg_scan_period = -1;
	if (info->attrs[NL80211_ATTR_BG_SCAN_PERIOD] &&
		(wiphy->flags & WIPHY_FLAG_SUPPORTS_FW_ROAM)) {
		connect.bg_scan_period =
			FUNC13(info->attrs[NL80211_ATTR_BG_SCAN_PERIOD]);
	}

	if (info->attrs[NL80211_ATTR_MAC])
		connect.bssid = FUNC11(info->attrs[NL80211_ATTR_MAC]);
	connect.ssid = FUNC11(info->attrs[NL80211_ATTR_SSID]);
	connect.ssid_len = FUNC15(info->attrs[NL80211_ATTR_SSID]);

	if (info->attrs[NL80211_ATTR_IE]) {
		connect.ie = FUNC11(info->attrs[NL80211_ATTR_IE]);
		connect.ie_len = FUNC15(info->attrs[NL80211_ATTR_IE]);
	}

	if (info->attrs[NL80211_ATTR_USE_MFP]) {
		connect.mfp = FUNC14(info->attrs[NL80211_ATTR_USE_MFP]);
		if (connect.mfp != NL80211_MFP_REQUIRED &&
		    connect.mfp != NL80211_MFP_NO)
			return -EINVAL;
	} else {
		connect.mfp = NL80211_MFP_NO;
	}

	if (info->attrs[NL80211_ATTR_WIPHY_FREQ]) {
		connect.channel =
			FUNC3(wiphy,
			    FUNC14(info->attrs[NL80211_ATTR_WIPHY_FREQ]));
		if (!connect.channel ||
		    connect.channel->flags & IEEE80211_CHAN_DISABLED)
			return -EINVAL;
	}

	if (connect.privacy && info->attrs[NL80211_ATTR_KEYS]) {
		connkeys = FUNC9(rdev,
					  info->attrs[NL80211_ATTR_KEYS], NULL);
		if (FUNC0(connkeys))
			return FUNC1(connkeys);
	}

	if (FUNC12(info->attrs[NL80211_ATTR_DISABLE_HT]))
		connect.flags |= ASSOC_REQ_DISABLE_HT;

	if (info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK])
		FUNC6(&connect.ht_capa_mask,
		       FUNC11(info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK]),
		       sizeof(connect.ht_capa_mask));

	if (info->attrs[NL80211_ATTR_HT_CAPABILITY]) {
		if (!info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK]) {
			FUNC5(connkeys);
			return -EINVAL;
		}
		FUNC6(&connect.ht_capa,
		       FUNC11(info->attrs[NL80211_ATTR_HT_CAPABILITY]),
		       sizeof(connect.ht_capa));
	}

	if (FUNC12(info->attrs[NL80211_ATTR_DISABLE_VHT]))
		connect.flags |= ASSOC_REQ_DISABLE_VHT;

	if (info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK])
		FUNC6(&connect.vht_capa_mask,
		       FUNC11(info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK]),
		       sizeof(connect.vht_capa_mask));

	if (info->attrs[NL80211_ATTR_VHT_CAPABILITY]) {
		if (!info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK]) {
			FUNC5(connkeys);
			return -EINVAL;
		}
		FUNC6(&connect.vht_capa,
		       FUNC11(info->attrs[NL80211_ATTR_VHT_CAPABILITY]),
		       sizeof(connect.vht_capa));
	}

	err = FUNC2(rdev, dev, &connect, connkeys);
	if (err)
		FUNC5(connkeys);
	return err;
}