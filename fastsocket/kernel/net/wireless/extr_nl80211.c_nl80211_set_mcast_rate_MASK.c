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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  wiphy; TYPE_2__* ops; TYPE_1__* ieee80211_ptr; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_2__* ops; TYPE_1__* ieee80211_ptr; } ;
typedef  int /*<<< orphan*/  mcast_rate ;
struct TYPE_4__ {int (* set_mcast_rate ) (int /*<<< orphan*/ *,struct net_device*,int*) ;} ;
struct TYPE_3__ {scalar_t__ iftype; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IEEE80211_NUM_BANDS ; 
 size_t NL80211_ATTR_MCAST_RATE ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct net_device*,int*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	int mcast_rate[IEEE80211_NUM_BANDS];
	u32 nla_rate;
	int err;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_ADHOC &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT)
		return -EOPNOTSUPP;

	if (!rdev->ops->set_mcast_rate)
		return -EOPNOTSUPP;

	FUNC0(mcast_rate, 0, sizeof(mcast_rate));

	if (!info->attrs[NL80211_ATTR_MCAST_RATE])
		return -EINVAL;

	nla_rate = FUNC2(info->attrs[NL80211_ATTR_MCAST_RATE]);
	if (!FUNC1(rdev, mcast_rate, nla_rate))
		return -EINVAL;

	err = rdev->ops->set_mcast_rate(&rdev->wiphy, dev, mcast_rate);

	return err;
}