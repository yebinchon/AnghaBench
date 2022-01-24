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
struct nlmsghdr {int dummy; } ;
struct net_device {struct dcbnl_rtnl_ops* dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbnl_rtnl_ops {int dummy; } ;
struct dcbmsg {int cmd; int /*<<< orphan*/  dcb_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int DCB_CAP_DCBX_VER_IEEE ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dcbmsg* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  RTNLGRP_DCB ; 
 int FUNC1 (struct sk_buff*,struct net_device*) ; 
 int FUNC2 (struct sk_buff*,struct net_device*) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, int event, int cmd,
			u32 seq, u32 pid, int dcbx_ver)
{
	struct net *net = FUNC3(dev);
	struct sk_buff *skb;
	struct nlmsghdr *nlh;
	struct dcbmsg *dcb;
	const struct dcbnl_rtnl_ops *ops = dev->dcbnl_ops;
	int err;

	if (!ops)
		return -EOPNOTSUPP;

	skb = FUNC8(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb)
		return -ENOBUFS;

	nlh = FUNC9(skb, pid, 0, event, sizeof(*dcb), 0);
	if (nlh == NULL) {
		FUNC7(skb);
		return -EMSGSIZE;
	}

	dcb = FUNC0(nlh);
	dcb->dcb_family = AF_UNSPEC;
	dcb->cmd = cmd;

	if (dcbx_ver == DCB_CAP_DCBX_VER_IEEE)
		err = FUNC2(skb, dev);
	else
		err = FUNC1(skb, dev);

	if (err < 0) {
		/* Report error to broadcast listeners */
		FUNC5(skb, nlh);
		FUNC4(skb);
		FUNC11(net, RTNLGRP_DCB, err);
	} else {
		/* End nlmsg and notify broadcast listeners */
		FUNC6(skb, nlh);
		FUNC10(skb, net, 0, RTNLGRP_DCB, NULL, GFP_KERNEL);
	}

	return err;
}