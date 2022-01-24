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
struct sk_buff {int dummy; } ;
struct regulatory_request {char* alpha2; scalar_t__ wiphy_idx; scalar_t__ intersect; int /*<<< orphan*/  initiator; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_ATTR_REG_ALPHA2 ; 
 int /*<<< orphan*/  NL80211_ATTR_REG_INITIATOR ; 
 int /*<<< orphan*/  NL80211_ATTR_REG_TYPE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_REG_CHANGE ; 
 int /*<<< orphan*/  NL80211_REGDOM_TYPE_COUNTRY ; 
 int /*<<< orphan*/  NL80211_REGDOM_TYPE_CUSTOM_WORLD ; 
 int /*<<< orphan*/  NL80211_REGDOM_TYPE_INTERSECTION ; 
 int /*<<< orphan*/  NL80211_REGDOM_TYPE_WORLD ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 scalar_t__ WIPHY_IDX_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ nl80211_regulatory_mcgrp ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(struct regulatory_request *request)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC8(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_REG_CHANGE);
	if (!hdr) {
		FUNC7(msg);
		return;
	}

	/* Userspace can always count this one always being set */
	if (FUNC6(msg, NL80211_ATTR_REG_INITIATOR, request->initiator))
		goto nla_put_failure;

	if (request->alpha2[0] == '0' && request->alpha2[1] == '0') {
		if (FUNC6(msg, NL80211_ATTR_REG_TYPE,
			       NL80211_REGDOM_TYPE_WORLD))
			goto nla_put_failure;
	} else if (request->alpha2[0] == '9' && request->alpha2[1] == '9') {
		if (FUNC6(msg, NL80211_ATTR_REG_TYPE,
			       NL80211_REGDOM_TYPE_CUSTOM_WORLD))
			goto nla_put_failure;
	} else if ((request->alpha2[0] == '9' && request->alpha2[1] == '8') ||
		   request->intersect) {
		if (FUNC6(msg, NL80211_ATTR_REG_TYPE,
			       NL80211_REGDOM_TYPE_INTERSECTION))
			goto nla_put_failure;
	} else {
		if (FUNC6(msg, NL80211_ATTR_REG_TYPE,
			       NL80211_REGDOM_TYPE_COUNTRY) ||
		    FUNC4(msg, NL80211_ATTR_REG_ALPHA2,
				   request->alpha2))
			goto nla_put_failure;
	}

	if (request->wiphy_idx != WIPHY_IDX_INVALID &&
	    FUNC5(msg, NL80211_ATTR_WIPHY, request->wiphy_idx))
		goto nla_put_failure;

	FUNC1(msg, hdr);

	FUNC9();
	FUNC2(msg, 0, nl80211_regulatory_mcgrp.id,
				GFP_ATOMIC);
	FUNC10();

	return;

nla_put_failure:
	FUNC0(msg, hdr);
	FUNC7(msg);
}