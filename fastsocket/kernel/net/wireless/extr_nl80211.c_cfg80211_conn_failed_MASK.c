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
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_connect_failed_reason { ____Placeholder_nl80211_connect_failed_reason } nl80211_connect_failed_reason ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_CONN_FAILED_REASON ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_CMD_CONN_FAILED ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ nl80211_mlme_mcgrp ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC9 (struct wiphy*) ; 

void FUNC10(struct net_device *dev, const u8 *mac_addr,
			  enum nl80211_connect_failed_reason reason,
			  gfp_t gfp)
{
	struct wiphy *wiphy = dev->ieee80211_ptr->wiphy;
	struct cfg80211_registered_device *rdev = FUNC9(wiphy);
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC7(NLMSG_GOODSIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_CONN_FAILED);
	if (!hdr) {
		FUNC6(msg);
		return;
	}

	if (FUNC5(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC4(msg, NL80211_ATTR_MAC, ETH_ALEN, mac_addr) ||
	    FUNC5(msg, NL80211_ATTR_CONN_FAILED_REASON, reason))
		goto nla_put_failure;

	FUNC1(msg, hdr);

	FUNC2(FUNC8(&rdev->wiphy), msg, 0,
				nl80211_mlme_mcgrp.id, gfp);
	return;

 nla_put_failure:
	FUNC0(msg, hdr);
	FUNC6(msg);
}