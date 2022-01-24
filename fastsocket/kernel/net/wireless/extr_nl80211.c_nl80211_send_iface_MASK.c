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
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {int iftype; int /*<<< orphan*/  ssid; scalar_t__ ssid_len; struct net_device* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int /*<<< orphan*/  name; } ;
struct cfg80211_registered_device {int wiphy_idx; int devlist_generation; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {scalar_t__ get_channel; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_GENERATION ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_IFNAME ; 
 int /*<<< orphan*/  NL80211_ATTR_IFTYPE ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_SSID ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_INTERFACE ; 
 int cfg80211_rdev_list_generation ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (struct sk_buff*,void*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct cfg80211_chan_def*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC9 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *msg, u32 portid, u32 seq, int flags,
			      struct cfg80211_registered_device *rdev,
			      struct wireless_dev *wdev)
{
	struct net_device *dev = wdev->netdev;
	void *hdr;

	hdr = FUNC3(msg, portid, seq, flags, NL80211_CMD_NEW_INTERFACE);
	if (!hdr)
		return -1;

	if (dev &&
	    (FUNC6(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	     FUNC5(msg, NL80211_ATTR_IFNAME, dev->name)))
		goto nla_put_failure;

	if (FUNC6(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC6(msg, NL80211_ATTR_IFTYPE, wdev->iftype) ||
	    FUNC7(msg, NL80211_ATTR_WDEV, FUNC10(wdev)) ||
	    FUNC4(msg, NL80211_ATTR_MAC, ETH_ALEN, FUNC9(wdev)) ||
	    FUNC6(msg, NL80211_ATTR_GENERATION,
			rdev->devlist_generation ^
			(cfg80211_rdev_list_generation << 2)))
		goto nla_put_failure;

	if (rdev->ops->get_channel) {
		int ret;
		struct cfg80211_chan_def chandef;

		ret = FUNC8(rdev, wdev, &chandef);
		if (ret == 0) {
			if (FUNC2(msg, &chandef))
				goto nla_put_failure;
		}
	}

	if (wdev->ssid_len) {
		if (FUNC4(msg, NL80211_ATTR_SSID, wdev->ssid_len, wdev->ssid))
			goto nla_put_failure;
	}

	return FUNC1(msg, hdr);

 nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}