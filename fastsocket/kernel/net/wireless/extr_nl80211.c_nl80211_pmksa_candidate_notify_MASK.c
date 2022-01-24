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
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy_idx; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_PMKSA_CANDIDATE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_PMKSA_CANDIDATE ; 
 int /*<<< orphan*/  NL80211_PMKSA_CANDIDATE_BSSID ; 
 int /*<<< orphan*/  NL80211_PMKSA_CANDIDATE_INDEX ; 
 int /*<<< orphan*/  NL80211_PMKSA_CANDIDATE_PREAUTH ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ nl80211_mlme_mcgrp ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct cfg80211_registered_device *rdev,
			       struct net_device *netdev, int index,
			       const u8 *bssid, bool preauth, gfp_t gfp)
{
	struct sk_buff *msg;
	struct nlattr *attr;
	void *hdr;

	msg = FUNC10(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_PMKSA_CANDIDATE);
	if (!hdr) {
		FUNC9(msg);
		return;
	}

	if (FUNC8(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC8(msg, NL80211_ATTR_IFINDEX, netdev->ifindex))
		goto nla_put_failure;

	attr = FUNC5(msg, NL80211_ATTR_PMKSA_CANDIDATE);
	if (!attr)
		goto nla_put_failure;

	if (FUNC8(msg, NL80211_PMKSA_CANDIDATE_INDEX, index) ||
	    FUNC6(msg, NL80211_PMKSA_CANDIDATE_BSSID, ETH_ALEN, bssid) ||
	    (preauth &&
	     FUNC7(msg, NL80211_PMKSA_CANDIDATE_PREAUTH)))
		goto nla_put_failure;

	FUNC4(msg, attr);

	FUNC1(msg, hdr);

	FUNC2(FUNC11(&rdev->wiphy), msg, 0,
				nl80211_mlme_mcgrp.id, gfp);
	return;

 nla_put_failure:
	FUNC0(msg, hdr);
	FUNC9(msg);
}