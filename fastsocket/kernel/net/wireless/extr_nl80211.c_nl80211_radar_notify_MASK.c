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
struct wireless_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy_idx; int /*<<< orphan*/  wiphy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_radar_event { ____Placeholder_nl80211_radar_event } nl80211_radar_event ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_RADAR_EVENT ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_RADAR_DETECT ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ nl80211_mlme_mcgrp ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct cfg80211_chan_def*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(struct cfg80211_registered_device *rdev,
		     struct cfg80211_chan_def *chandef,
		     enum nl80211_radar_event event,
		     struct net_device *netdev, gfp_t gfp)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC8(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC4(msg, 0, 0, 0, NL80211_CMD_RADAR_DETECT);
	if (!hdr) {
		FUNC7(msg);
		return;
	}

	if (FUNC5(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx))
		goto nla_put_failure;

	/* NOP and radar events don't need a netdev parameter */
	if (netdev) {
		struct wireless_dev *wdev = netdev->ieee80211_ptr;

		if (FUNC5(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
		    FUNC6(msg, NL80211_ATTR_WDEV, FUNC9(wdev)))
			goto nla_put_failure;
	}

	if (FUNC5(msg, NL80211_ATTR_RADAR_EVENT, event))
		goto nla_put_failure;

	if (FUNC3(msg, chandef))
		goto nla_put_failure;

	if (FUNC1(msg, hdr) < 0) {
		FUNC7(msg);
		return;
	}

	FUNC2(FUNC10(&rdev->wiphy), msg, 0,
				nl80211_mlme_mcgrp.id, gfp);
	return;

 nla_put_failure:
	FUNC0(msg, hdr);
	FUNC7(msg);
}