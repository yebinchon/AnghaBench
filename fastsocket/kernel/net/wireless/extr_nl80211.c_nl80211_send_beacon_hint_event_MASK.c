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
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_AFTER ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_BEFORE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_REG_BEACON_HINT ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct ieee80211_channel*,int) ; 
 TYPE_1__ nl80211_regulatory_mcgrp ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(struct wiphy *wiphy,
				    struct ieee80211_channel *channel_before,
				    struct ieee80211_channel *channel_after)
{
	struct sk_buff *msg;
	void *hdr;
	struct nlattr *nl_freq;

	msg = FUNC10(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (!msg)
		return;

	hdr = FUNC5(msg, 0, 0, 0, NL80211_CMD_REG_BEACON_HINT);
	if (!hdr) {
		FUNC9(msg);
		return;
	}

	/*
	 * Since we are applying the beacon hint to a wiphy we know its
	 * wiphy_idx is valid
	 */
	if (FUNC8(msg, NL80211_ATTR_WIPHY, FUNC3(wiphy)))
		goto nla_put_failure;

	/* Before */
	nl_freq = FUNC7(msg, NL80211_ATTR_FREQ_BEFORE);
	if (!nl_freq)
		goto nla_put_failure;
	if (FUNC4(msg, channel_before, false))
		goto nla_put_failure;
	FUNC6(msg, nl_freq);

	/* After */
	nl_freq = FUNC7(msg, NL80211_ATTR_FREQ_AFTER);
	if (!nl_freq)
		goto nla_put_failure;
	if (FUNC4(msg, channel_after, false))
		goto nla_put_failure;
	FUNC6(msg, nl_freq);

	FUNC1(msg, hdr);

	FUNC11();
	FUNC2(msg, 0, nl80211_regulatory_mcgrp.id,
				GFP_ATOMIC);
	FUNC12();

	return;

nla_put_failure:
	FUNC0(msg, hdr);
	FUNC9(msg);
}