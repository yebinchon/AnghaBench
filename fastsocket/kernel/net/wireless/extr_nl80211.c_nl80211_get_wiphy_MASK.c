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
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; struct cfg80211_registered_device** user_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct sk_buff*,struct genl_info*) ; 
 scalar_t__ FUNC1 (struct cfg80211_registered_device*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *msg;
	struct cfg80211_registered_device *dev = info->user_ptr[0];

	msg = FUNC3(4096, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	if (FUNC1(dev, msg, info->snd_pid, info->snd_seq, 0,
			       false, NULL, NULL, NULL) < 0) {
		FUNC2(msg);
		return -ENOBUFS;
	}

	return FUNC0(msg, info);
}