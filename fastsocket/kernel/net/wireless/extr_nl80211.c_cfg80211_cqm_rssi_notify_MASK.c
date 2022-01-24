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
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy_idx; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_cqm_rssi_threshold_event { ____Placeholder_nl80211_cqm_rssi_threshold_event } nl80211_cqm_rssi_threshold_event ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_CQM ; 
 int /*<<< orphan*/  NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_NOTIFY_CQM ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ nl80211_mlme_mcgrp ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC11 (struct wiphy*) ; 

void FUNC12(struct net_device *dev,
			      enum nl80211_cqm_rssi_threshold_event rssi_event,
			      gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC11(wiphy);
	struct sk_buff *msg;
	struct nlattr *pinfoattr;
	void *hdr;

	FUNC9(dev, rssi_event);

	msg = FUNC8(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_NOTIFY_CQM);
	if (!hdr) {
		FUNC7(msg);
		return;
	}

	if (FUNC6(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC6(msg, NL80211_ATTR_IFINDEX, dev->ifindex))
		goto nla_put_failure;

	pinfoattr = FUNC5(msg, NL80211_ATTR_CQM);
	if (!pinfoattr)
		goto nla_put_failure;

	if (FUNC6(msg, NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT,
			rssi_event))
		goto nla_put_failure;

	FUNC4(msg, pinfoattr);

	FUNC1(msg, hdr);

	FUNC2(FUNC10(&rdev->wiphy), msg, 0,
				nl80211_mlme_mcgrp.id, gfp);
	return;

 nla_put_failure:
	FUNC0(msg, hdr);
	FUNC7(msg);
}