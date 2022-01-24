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
struct wireless_dev {scalar_t__ iftype; int /*<<< orphan*/  mesh_id_len; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct mesh_config {int dummy; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  update_mesh_config; } ;

/* Variables and functions */
 int ENOLINK ; 
 int EOPNOTSUPP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int FUNC0 (struct genl_info*,struct mesh_config*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct net_device*,struct net_device*,int /*<<< orphan*/ ,struct mesh_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
				      struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct mesh_config cfg;
	u32 mask;
	int err;

	if (wdev->iftype != NL80211_IFTYPE_MESH_POINT)
		return -EOPNOTSUPP;

	if (!rdev->ops->update_mesh_config)
		return -EOPNOTSUPP;

	err = FUNC0(info, &cfg, &mask);
	if (err)
		return err;

	FUNC2(wdev);
	if (!wdev->mesh_id_len)
		err = -ENOLINK;

	if (!err)
		err = FUNC1(rdev, dev, mask, &cfg);

	FUNC3(wdev);

	return err;
}