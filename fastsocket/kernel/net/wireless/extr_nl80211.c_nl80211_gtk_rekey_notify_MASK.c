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
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_REKEY_DATA ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_SET_REKEY_OFFLOAD ; 
 int /*<<< orphan*/  NL80211_REKEY_DATA_REPLAY_CTR ; 
 int /*<<< orphan*/  NL80211_REPLAY_CTR_LEN ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ nl80211_mlme_mcgrp ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct cfg80211_registered_device *rdev,
				     struct net_device *netdev, const u8 *bssid,
				     const u8 *replay_ctr, gfp_t gfp)
{
	struct sk_buff *msg;
	struct nlattr *rekey_attr;
	void *hdr;

	msg = FUNC9(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_SET_REKEY_OFFLOAD);
	if (!hdr) {
		FUNC8(msg);
		return;
	}

	if (FUNC7(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC7(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
	    FUNC6(msg, NL80211_ATTR_MAC, ETH_ALEN, bssid))
		goto nla_put_failure;

	rekey_attr = FUNC5(msg, NL80211_ATTR_REKEY_DATA);
	if (!rekey_attr)
		goto nla_put_failure;

	if (FUNC6(msg, NL80211_REKEY_DATA_REPLAY_CTR,
		    NL80211_REPLAY_CTR_LEN, replay_ctr))
		goto nla_put_failure;

	FUNC4(msg, rekey_attr);

	FUNC1(msg, hdr);

	FUNC2(FUNC10(&rdev->wiphy), msg, 0,
				nl80211_mlme_mcgrp.id, gfp);
	return;

 nla_put_failure:
	FUNC0(msg, hdr);
	FUNC8(msg);
}