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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct cfg80211_registered_device** user_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct net*) ; 
 size_t NL80211_ATTR_PID ; 
 int FUNC1 (struct net*) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct net*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net *net;
	int err;
	u32 pid;

	if (!info->attrs[NL80211_ATTR_PID])
		return -EINVAL;

	pid = FUNC5(info->attrs[NL80211_ATTR_PID]);

	net = FUNC3(pid);
	if (FUNC0(net))
		return FUNC1(net);

	err = 0;

	/* check if anything to do */
	if (!FUNC4(FUNC7(&rdev->wiphy), net))
		err = FUNC2(rdev, net);

	FUNC6(net);
	return err;
}