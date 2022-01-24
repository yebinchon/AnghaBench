#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_ATTR_PROTOCOL_FEATURES ; 
 int /*<<< orphan*/  NL80211_CMD_GET_PROTOCOL_FEATURES ; 
 int /*<<< orphan*/  NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
					 struct genl_info *info)
{
	void *hdr;
	struct sk_buff *msg;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC3(msg, info->snd_pid, info->snd_seq, 0,
			     NL80211_CMD_GET_PROTOCOL_FEATURES);
	if (!hdr)
		goto nla_put_failure;

	if (FUNC4(msg, NL80211_ATTR_PROTOCOL_FEATURES,
			NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP))
		goto nla_put_failure;

	FUNC0(msg, hdr);
	return FUNC1(msg, info);

 nla_put_failure:
	FUNC2(msg);
	return -ENOBUFS;
}