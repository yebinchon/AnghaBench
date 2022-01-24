#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int features; struct ieee80211_supported_band** bands; } ;
struct sk_buff {int dummy; } ;
struct net_device {struct wiphy wiphy; TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct ieee80211_supported_band {int dummy; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {struct wiphy wiphy; TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_9__ {scalar_t__ width; TYPE_3__* chan; } ;
struct cfg80211_ibss_params {int beacon_interval; int channel_fixed; int privacy; int /*<<< orphan*/  control_port; TYPE_4__ chandef; int /*<<< orphan*/  mcast_rate; int /*<<< orphan*/  basic_rates; void* ie_len; void* ie; void* ssid_len; void* ssid; void* bssid; } ;
struct cfg80211_cached_keys {int dummy; } ;
typedef  int /*<<< orphan*/  ibss ;
struct TYPE_8__ {size_t band; } ;
struct TYPE_7__ {scalar_t__ iftype; } ;
struct TYPE_6__ {int /*<<< orphan*/  join_ibss; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct cfg80211_cached_keys*) ; 
 size_t NL80211_ATTR_BEACON_INTERVAL ; 
 size_t NL80211_ATTR_BSS_BASIC_RATES ; 
 size_t NL80211_ATTR_CONTROL_PORT ; 
 size_t NL80211_ATTR_FREQ_FIXED ; 
 size_t NL80211_ATTR_IE ; 
 size_t NL80211_ATTR_KEYS ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_MCAST_RATE ; 
 size_t NL80211_ATTR_PRIVACY ; 
 size_t NL80211_ATTR_SSID ; 
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ; 
 scalar_t__ NL80211_CHAN_WIDTH_40 ; 
 int NL80211_FEATURE_HT_IBSS ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int FUNC1 (struct cfg80211_cached_keys*) ; 
 int FUNC2 (struct net_device*,struct net_device*,struct cfg80211_ibss_params*,struct cfg80211_cached_keys*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,TYPE_4__*) ; 
 int FUNC4 (struct ieee80211_supported_band*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_cached_keys*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfg80211_ibss_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct net_device*,struct genl_info*,TYPE_4__*) ; 
 struct cfg80211_cached_keys* FUNC10 (struct net_device*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 void* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 
 void* FUNC15 (scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct cfg80211_ibss_params ibss;
	struct wiphy *wiphy;
	struct cfg80211_cached_keys *connkeys = NULL;
	int err;

	FUNC8(&ibss, 0, sizeof(ibss));

	if (!FUNC6(info->attrs[NL80211_ATTR_IE]))
		return -EINVAL;

	if (!info->attrs[NL80211_ATTR_SSID] ||
	    !FUNC15(info->attrs[NL80211_ATTR_SSID]))
		return -EINVAL;

	ibss.beacon_interval = 100;

	if (info->attrs[NL80211_ATTR_BEACON_INTERVAL]) {
		ibss.beacon_interval =
			FUNC14(info->attrs[NL80211_ATTR_BEACON_INTERVAL]);
		if (ibss.beacon_interval < 1 || ibss.beacon_interval > 10000)
			return -EINVAL;
	}

	if (!rdev->ops->join_ibss)
		return -EOPNOTSUPP;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_ADHOC)
		return -EOPNOTSUPP;

	wiphy = &rdev->wiphy;

	if (info->attrs[NL80211_ATTR_MAC]) {
		ibss.bssid = FUNC12(info->attrs[NL80211_ATTR_MAC]);

		if (!FUNC5(ibss.bssid))
			return -EINVAL;
	}
	ibss.ssid = FUNC12(info->attrs[NL80211_ATTR_SSID]);
	ibss.ssid_len = FUNC15(info->attrs[NL80211_ATTR_SSID]);

	if (info->attrs[NL80211_ATTR_IE]) {
		ibss.ie = FUNC12(info->attrs[NL80211_ATTR_IE]);
		ibss.ie_len = FUNC15(info->attrs[NL80211_ATTR_IE]);
	}

	err = FUNC9(rdev, info, &ibss.chandef);
	if (err)
		return err;

	if (!FUNC3(&rdev->wiphy, &ibss.chandef))
		return -EINVAL;

	if (ibss.chandef.width > NL80211_CHAN_WIDTH_40)
		return -EINVAL;
	if (ibss.chandef.width != NL80211_CHAN_WIDTH_20_NOHT &&
	    !(rdev->wiphy.features & NL80211_FEATURE_HT_IBSS))
		return -EINVAL;

	ibss.channel_fixed = !!info->attrs[NL80211_ATTR_FREQ_FIXED];
	ibss.privacy = !!info->attrs[NL80211_ATTR_PRIVACY];

	if (info->attrs[NL80211_ATTR_BSS_BASIC_RATES]) {
		u8 *rates =
			FUNC12(info->attrs[NL80211_ATTR_BSS_BASIC_RATES]);
		int n_rates =
			FUNC15(info->attrs[NL80211_ATTR_BSS_BASIC_RATES]);
		struct ieee80211_supported_band *sband =
			wiphy->bands[ibss.chandef.chan->band];

		err = FUNC4(sband, rates, n_rates,
					     &ibss.basic_rates);
		if (err)
			return err;
	}

	if (info->attrs[NL80211_ATTR_MCAST_RATE] &&
	    !FUNC11(rdev, ibss.mcast_rate,
			FUNC14(info->attrs[NL80211_ATTR_MCAST_RATE])))
		return -EINVAL;

	if (ibss.privacy && info->attrs[NL80211_ATTR_KEYS]) {
		bool no_ht = false;

		connkeys = FUNC10(rdev,
					  info->attrs[NL80211_ATTR_KEYS],
					  &no_ht);
		if (FUNC0(connkeys))
			return FUNC1(connkeys);

		if ((ibss.chandef.width != NL80211_CHAN_WIDTH_20_NOHT) &&
		    no_ht) {
			FUNC7(connkeys);
			return -EINVAL;
		}
	}

	ibss.control_port =
		FUNC13(info->attrs[NL80211_ATTR_CONTROL_PORT]);

	err = FUNC2(rdev, dev, &ibss, connkeys);
	if (err)
		FUNC7(connkeys);
	return err;
}