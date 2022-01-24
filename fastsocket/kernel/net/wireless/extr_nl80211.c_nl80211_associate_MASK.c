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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  wiphy; TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct ieee80211_channel {int flags; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct cfg80211_assoc_request {int use_mfp; int /*<<< orphan*/  crypto; int /*<<< orphan*/  vht_capa; int /*<<< orphan*/  vht_capa_mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  ht_capa; int /*<<< orphan*/  ht_capa_mask; void* prev_bssid; void* ie_len; void* ie; } ;
typedef  enum nl80211_mfp { ____Placeholder_nl80211_mfp } nl80211_mfp ;
struct TYPE_4__ {scalar_t__ iftype; } ;
struct TYPE_3__ {int /*<<< orphan*/  assoc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_REQ_DISABLE_HT ; 
 int /*<<< orphan*/  ASSOC_REQ_DISABLE_VHT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IEEE80211_CHAN_DISABLED ; 
 size_t NL80211_ATTR_DISABLE_HT ; 
 size_t NL80211_ATTR_DISABLE_VHT ; 
 size_t NL80211_ATTR_HT_CAPABILITY ; 
 size_t NL80211_ATTR_HT_CAPABILITY_MASK ; 
 size_t NL80211_ATTR_IE ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_PREV_BSSID ; 
 size_t NL80211_ATTR_SSID ; 
 size_t NL80211_ATTR_USE_MFP ; 
 size_t NL80211_ATTR_VHT_CAPABILITY ; 
 size_t NL80211_ATTR_VHT_CAPABILITY_MASK ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int NL80211_MFP_NO ; 
 int NL80211_MFP_REQUIRED ; 
 int FUNC0 (struct net_device*,struct net_device*,struct ieee80211_channel*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,struct cfg80211_assoc_request*) ; 
 struct ieee80211_channel* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC4 (struct net_device*,struct genl_info*,int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 void* FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct ieee80211_channel *chan;
	struct cfg80211_assoc_request req = {};
	const u8 *bssid, *ssid;
	int err, ssid_len = 0;

	if (!FUNC2(info->attrs[NL80211_ATTR_IE]))
		return -EINVAL;

	if (!info->attrs[NL80211_ATTR_MAC] ||
	    !info->attrs[NL80211_ATTR_SSID] ||
	    !info->attrs[NL80211_ATTR_WIPHY_FREQ])
		return -EINVAL;

	if (!rdev->ops->assoc)
		return -EOPNOTSUPP;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_STATION &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_CLIENT)
		return -EOPNOTSUPP;

	bssid = FUNC5(info->attrs[NL80211_ATTR_MAC]);

	chan = FUNC1(&rdev->wiphy,
		FUNC7(info->attrs[NL80211_ATTR_WIPHY_FREQ]));
	if (!chan || (chan->flags & IEEE80211_CHAN_DISABLED))
		return -EINVAL;

	ssid = FUNC5(info->attrs[NL80211_ATTR_SSID]);
	ssid_len = FUNC8(info->attrs[NL80211_ATTR_SSID]);

	if (info->attrs[NL80211_ATTR_IE]) {
		req.ie = FUNC5(info->attrs[NL80211_ATTR_IE]);
		req.ie_len = FUNC8(info->attrs[NL80211_ATTR_IE]);
	}

	if (info->attrs[NL80211_ATTR_USE_MFP]) {
		enum nl80211_mfp mfp =
			FUNC7(info->attrs[NL80211_ATTR_USE_MFP]);
		if (mfp == NL80211_MFP_REQUIRED)
			req.use_mfp = true;
		else if (mfp != NL80211_MFP_NO)
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_PREV_BSSID])
		req.prev_bssid = FUNC5(info->attrs[NL80211_ATTR_PREV_BSSID]);

	if (FUNC6(info->attrs[NL80211_ATTR_DISABLE_HT]))
		req.flags |= ASSOC_REQ_DISABLE_HT;

	if (info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK])
		FUNC3(&req.ht_capa_mask,
		       FUNC5(info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK]),
		       sizeof(req.ht_capa_mask));

	if (info->attrs[NL80211_ATTR_HT_CAPABILITY]) {
		if (!info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK])
			return -EINVAL;
		FUNC3(&req.ht_capa,
		       FUNC5(info->attrs[NL80211_ATTR_HT_CAPABILITY]),
		       sizeof(req.ht_capa));
	}

	if (FUNC6(info->attrs[NL80211_ATTR_DISABLE_VHT]))
		req.flags |= ASSOC_REQ_DISABLE_VHT;

	if (info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK])
		FUNC3(&req.vht_capa_mask,
		       FUNC5(info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK]),
		       sizeof(req.vht_capa_mask));

	if (info->attrs[NL80211_ATTR_VHT_CAPABILITY]) {
		if (!info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK])
			return -EINVAL;
		FUNC3(&req.vht_capa,
		       FUNC5(info->attrs[NL80211_ATTR_VHT_CAPABILITY]),
		       sizeof(req.vht_capa));
	}

	err = FUNC4(rdev, info, &req.crypto, 1);
	if (!err)
		err = FUNC0(rdev, dev, chan, bssid,
					  ssid, ssid_len, &req);

	return err;
}