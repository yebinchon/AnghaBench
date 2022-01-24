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
struct survey_info {int filled; int /*<<< orphan*/  channel_time_tx; int /*<<< orphan*/  channel_time_rx; int /*<<< orphan*/  channel_time_ext_busy; int /*<<< orphan*/  channel_time_busy; int /*<<< orphan*/  channel_time; int /*<<< orphan*/  noise; TYPE_1__* channel; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_2__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_SURVEY_INFO ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_SURVEY_RESULTS ; 
 int /*<<< orphan*/  NL80211_SURVEY_INFO_CHANNEL_TIME ; 
 int /*<<< orphan*/  NL80211_SURVEY_INFO_CHANNEL_TIME_BUSY ; 
 int /*<<< orphan*/  NL80211_SURVEY_INFO_CHANNEL_TIME_EXT_BUSY ; 
 int /*<<< orphan*/  NL80211_SURVEY_INFO_CHANNEL_TIME_RX ; 
 int /*<<< orphan*/  NL80211_SURVEY_INFO_CHANNEL_TIME_TX ; 
 int /*<<< orphan*/  NL80211_SURVEY_INFO_FREQUENCY ; 
 int /*<<< orphan*/  NL80211_SURVEY_INFO_IN_USE ; 
 int /*<<< orphan*/  NL80211_SURVEY_INFO_NOISE ; 
 int SURVEY_INFO_CHANNEL_TIME ; 
 int SURVEY_INFO_CHANNEL_TIME_BUSY ; 
 int SURVEY_INFO_CHANNEL_TIME_EXT_BUSY ; 
 int SURVEY_INFO_CHANNEL_TIME_RX ; 
 int SURVEY_INFO_CHANNEL_TIME_TX ; 
 int SURVEY_INFO_IN_USE ; 
 int SURVEY_INFO_NOISE_DBM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *msg, u32 portid, u32 seq,
				int flags, struct net_device *dev,
				struct survey_info *survey)
{
	void *hdr;
	struct nlattr *infoattr;

	hdr = FUNC2(msg, portid, seq, flags,
			     NL80211_CMD_NEW_SURVEY_RESULTS);
	if (!hdr)
		return -ENOMEM;

	if (FUNC6(msg, NL80211_ATTR_IFINDEX, dev->ifindex))
		goto nla_put_failure;

	infoattr = FUNC4(msg, NL80211_ATTR_SURVEY_INFO);
	if (!infoattr)
		goto nla_put_failure;

	if (FUNC6(msg, NL80211_SURVEY_INFO_FREQUENCY,
			survey->channel->center_freq))
		goto nla_put_failure;

	if ((survey->filled & SURVEY_INFO_NOISE_DBM) &&
	    FUNC8(msg, NL80211_SURVEY_INFO_NOISE, survey->noise))
		goto nla_put_failure;
	if ((survey->filled & SURVEY_INFO_IN_USE) &&
	    FUNC5(msg, NL80211_SURVEY_INFO_IN_USE))
		goto nla_put_failure;
	if ((survey->filled & SURVEY_INFO_CHANNEL_TIME) &&
	    FUNC7(msg, NL80211_SURVEY_INFO_CHANNEL_TIME,
			survey->channel_time))
		goto nla_put_failure;
	if ((survey->filled & SURVEY_INFO_CHANNEL_TIME_BUSY) &&
	    FUNC7(msg, NL80211_SURVEY_INFO_CHANNEL_TIME_BUSY,
			survey->channel_time_busy))
		goto nla_put_failure;
	if ((survey->filled & SURVEY_INFO_CHANNEL_TIME_EXT_BUSY) &&
	    FUNC7(msg, NL80211_SURVEY_INFO_CHANNEL_TIME_EXT_BUSY,
			survey->channel_time_ext_busy))
		goto nla_put_failure;
	if ((survey->filled & SURVEY_INFO_CHANNEL_TIME_RX) &&
	    FUNC7(msg, NL80211_SURVEY_INFO_CHANNEL_TIME_RX,
			survey->channel_time_rx))
		goto nla_put_failure;
	if ((survey->filled & SURVEY_INFO_CHANNEL_TIME_TX) &&
	    FUNC7(msg, NL80211_SURVEY_INFO_CHANNEL_TIME_TX,
			survey->channel_time_tx))
		goto nla_put_failure;

	FUNC3(msg, infoattr);

	return FUNC1(msg, hdr);

 nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}