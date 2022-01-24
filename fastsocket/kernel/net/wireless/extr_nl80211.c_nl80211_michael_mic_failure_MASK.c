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
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy_idx; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_key_type { ____Placeholder_nl80211_key_type } nl80211_key_type ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_KEY_IDX ; 
 int /*<<< orphan*/  NL80211_ATTR_KEY_SEQ ; 
 int /*<<< orphan*/  NL80211_ATTR_KEY_TYPE ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_MICHAEL_MIC_FAILURE ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ nl80211_mlme_mcgrp ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct cfg80211_registered_device *rdev,
				 struct net_device *netdev, const u8 *addr,
				 enum nl80211_key_type key_type, int key_id,
				 const u8 *tsc, gfp_t gfp)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC8(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_MICHAEL_MIC_FAILURE);
	if (!hdr) {
		FUNC7(msg);
		return;
	}

	if (FUNC5(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC5(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
	    (addr && FUNC4(msg, NL80211_ATTR_MAC, ETH_ALEN, addr)) ||
	    FUNC5(msg, NL80211_ATTR_KEY_TYPE, key_type) ||
	    (key_id != -1 &&
	     FUNC6(msg, NL80211_ATTR_KEY_IDX, key_id)) ||
	    (tsc && FUNC4(msg, NL80211_ATTR_KEY_SEQ, 6, tsc)))
		goto nla_put_failure;

	FUNC1(msg, hdr);

	FUNC2(FUNC9(&rdev->wiphy), msg, 0,
				nl80211_mlme_mcgrp.id, gfp);
	return;

 nla_put_failure:
	FUNC0(msg, hdr);
	FUNC7(msg);
}