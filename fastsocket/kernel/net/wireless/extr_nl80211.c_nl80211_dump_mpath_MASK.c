#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {scalar_t__ iftype; int /*<<< orphan*/  netdev; } ;
struct sk_buff {int len; } ;
struct netlink_callback {int* args; TYPE_2__* nlh; int /*<<< orphan*/  skb; } ;
struct mpath_info {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {int /*<<< orphan*/  nlmsg_seq; } ;
struct TYPE_4__ {int /*<<< orphan*/  dump_mpath; } ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*) ; 
 int FUNC2 (struct sk_buff*,struct netlink_callback*,struct cfg80211_registered_device**,struct wireless_dev**) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mpath_info*) ; 
 int FUNC4 (struct cfg80211_registered_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mpath_info*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
			      struct netlink_callback *cb)
{
	struct mpath_info pinfo;
	struct cfg80211_registered_device *dev;
	struct wireless_dev *wdev;
	u8 dst[ETH_ALEN];
	u8 next_hop[ETH_ALEN];
	int path_idx = cb->args[2];
	int err;

	err = FUNC2(skb, cb, &dev, &wdev);
	if (err)
		return err;

	if (!dev->ops->dump_mpath) {
		err = -EOPNOTSUPP;
		goto out_err;
	}

	if (wdev->iftype != NL80211_IFTYPE_MESH_POINT) {
		err = -EOPNOTSUPP;
		goto out_err;
	}

	while (1) {
		err = FUNC4(dev, wdev->netdev, path_idx, dst,
				      next_hop, &pinfo);
		if (err == -ENOENT)
			break;
		if (err)
			goto out_err;

		if (FUNC3(skb, FUNC0(cb->skb).pid,
				       cb->nlh->nlmsg_seq, NLM_F_MULTI,
				       wdev->netdev, dst, next_hop,
				       &pinfo) < 0)
			goto out;

		path_idx++;
	}


 out:
	cb->args[2] = path_idx;
	err = skb->len;
 out_err:
	FUNC1(dev);
	return err;
}