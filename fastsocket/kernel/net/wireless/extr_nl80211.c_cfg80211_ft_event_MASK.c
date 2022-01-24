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
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
struct cfg80211_ft_event_params {scalar_t__ ric_ies; int /*<<< orphan*/  ric_ies_len; scalar_t__ ies; int /*<<< orphan*/  ies_len; scalar_t__ target_ap; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_ATTR_IE ; 
 int /*<<< orphan*/  NL80211_ATTR_IE_RIC ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_FT_EVENT ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ nl80211_mlme_mcgrp ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wiphy*,struct net_device*,struct cfg80211_ft_event_params*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC9 (struct wiphy*) ; 

void FUNC10(struct net_device *netdev,
		       struct cfg80211_ft_event_params *ft_event)
{
	struct wiphy *wiphy = netdev->ieee80211_ptr->wiphy;
	struct cfg80211_registered_device *rdev = FUNC9(wiphy);
	struct sk_buff *msg;
	void *hdr;
	int err;

	FUNC7(wiphy, netdev, ft_event);

	if (!ft_event->target_ap)
		return;

	msg = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, NL80211_CMD_FT_EVENT);
	if (!hdr) {
		FUNC5(msg);
		return;
	}

	FUNC4(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx);
	FUNC4(msg, NL80211_ATTR_IFINDEX, netdev->ifindex);
	FUNC3(msg, NL80211_ATTR_MAC, ETH_ALEN, ft_event->target_ap);
	if (ft_event->ies)
		FUNC3(msg, NL80211_ATTR_IE, ft_event->ies_len, ft_event->ies);
	if (ft_event->ric_ies)
		FUNC3(msg, NL80211_ATTR_IE_RIC, ft_event->ric_ies_len,
			ft_event->ric_ies);

	err = FUNC0(msg, hdr);
	if (err < 0) {
		FUNC5(msg);
		return;
	}

	FUNC1(FUNC8(&rdev->wiphy), msg, 0,
				nl80211_mlme_mcgrp.id, GFP_KERNEL);
}