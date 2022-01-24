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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int flags; scalar_t__ max_remain_on_channel_duration; } ;
struct wireless_dev {TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; int /*<<< orphan*/ * attrs; struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int /*<<< orphan*/  chan; } ;
struct TYPE_3__ {int /*<<< orphan*/  remain_on_channel; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 size_t NL80211_ATTR_DURATION ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
 int /*<<< orphan*/  NL80211_CMD_REMAIN_ON_CHANNEL ; 
 scalar_t__ NL80211_MIN_REMAIN_ON_CHANNEL_TIME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC1 (void*) ; 
 int WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int FUNC4 (struct wireless_dev*,struct genl_info*,struct cfg80211_chan_def*) ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct wireless_dev*,struct wireless_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb,
				     struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct wireless_dev *wdev = info->user_ptr[1];
	struct cfg80211_chan_def chandef;
	struct sk_buff *msg;
	void *hdr;
	u64 cookie;
	u32 duration;
	int err;

	if (!info->attrs[NL80211_ATTR_WIPHY_FREQ] ||
	    !info->attrs[NL80211_ATTR_DURATION])
		return -EINVAL;

	duration = FUNC6(info->attrs[NL80211_ATTR_DURATION]);

	if (!rdev->ops->remain_on_channel ||
	    !(rdev->wiphy.flags & WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL))
		return -EOPNOTSUPP;

	/*
	 * We should be on that channel for at least a minimum amount of
	 * time (10ms) but no longer than the driver supports.
	 */
	if (duration < NL80211_MIN_REMAIN_ON_CHANNEL_TIME ||
	    duration > rdev->wiphy.max_remain_on_channel_duration)
		return -EINVAL;

	err = FUNC4(rdev, info, &chandef);
	if (err)
		return err;

	msg = FUNC9(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC5(msg, info->snd_pid, info->snd_seq, 0,
			     NL80211_CMD_REMAIN_ON_CHANNEL);

	if (FUNC0(hdr)) {
		err = FUNC1(hdr);
		goto free_msg;
	}

	err = FUNC10(rdev, wdev, chandef.chan,
				     duration, &cookie);

	if (err)
		goto free_msg;

	if (FUNC7(msg, NL80211_ATTR_COOKIE, cookie))
		goto nla_put_failure;

	FUNC2(msg, hdr);

	return FUNC3(msg, info);

 nla_put_failure:
	err = -ENOBUFS;
 free_msg:
	FUNC8(msg);
	return err;
}