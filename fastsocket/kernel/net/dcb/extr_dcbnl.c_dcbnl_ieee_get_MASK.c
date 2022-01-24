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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {struct dcbnl_rtnl_ops* dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbnl_rtnl_ops {int dummy; } ;
struct dcbmsg {int /*<<< orphan*/  cmd; int /*<<< orphan*/  dcb_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  DCB_CMD_IEEE_GET ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dcbmsg* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 int FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev, struct nlattr **tb,
			  u32 pid, u32 seq, u16 flags)
{
	struct net *net = FUNC2(netdev);
	struct sk_buff *skb;
	struct nlmsghdr *nlh;
	struct dcbmsg *dcb;
	const struct dcbnl_rtnl_ops *ops = netdev->dcbnl_ops;
	int err;

	if (!ops)
		return -EOPNOTSUPP;

	skb = FUNC7(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb)
		return -ENOBUFS;

	nlh = FUNC8(skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);
	if (nlh == NULL) {
		FUNC6(skb);
		return -EMSGSIZE;
	}

	dcb = FUNC0(nlh);
	dcb->dcb_family = AF_UNSPEC;
	dcb->cmd = DCB_CMD_IEEE_GET;

	err = FUNC1(skb, netdev);

	if (err < 0) {
		FUNC4(skb, nlh);
		FUNC3(skb);
	} else {
		FUNC5(skb, nlh);
		err = FUNC9(skb, net, pid);
	}

	return err;
}