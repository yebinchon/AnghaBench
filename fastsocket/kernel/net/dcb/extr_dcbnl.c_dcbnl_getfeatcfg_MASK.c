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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct dcbmsg {int /*<<< orphan*/  cmd; int /*<<< orphan*/  dcb_family; } ;
struct TYPE_2__ {int (* getfeatcfg ) (struct net_device*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 size_t DCB_ATTR_FEATCFG ; 
 int /*<<< orphan*/  DCB_CMD_GFEATCFG ; 
 size_t DCB_FEATCFG_ATTR_ALL ; 
 int DCB_FEATCFG_ATTR_MAX ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dcbmsg* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 int /*<<< orphan*/  dcbnl_featcfg_nest ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,size_t) ; 
 int FUNC6 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct net_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *netdev, struct nlattr **tb,
			    u32 pid, u32 seq, u16 flags)
{
	struct sk_buff *dcbnl_skb;
	struct nlmsghdr *nlh;
	struct dcbmsg *dcb;
	struct nlattr *data[DCB_FEATCFG_ATTR_MAX + 1], *nest;
	u8 value;
	int ret, i;
	int getall = 0;

	if (!netdev->dcbnl_ops->getfeatcfg)
		return -EOPNOTSUPP;

	if (!tb[DCB_ATTR_FEATCFG])
		return -EINVAL;

	ret = FUNC6(data, DCB_FEATCFG_ATTR_MAX, tb[DCB_ATTR_FEATCFG],
			       dcbnl_featcfg_nest);
	if (ret)
		goto err_out;

	dcbnl_skb = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!dcbnl_skb) {
		ret = -ENOBUFS;
		goto err_out;
	}

	nlh = FUNC1(dcbnl_skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);

	dcb = FUNC0(nlh);
	dcb->dcb_family = AF_UNSPEC;
	dcb->cmd = DCB_CMD_GFEATCFG;

	nest = FUNC5(dcbnl_skb, DCB_ATTR_FEATCFG);
	if (!nest) {
		ret = -EMSGSIZE;
		goto nla_put_failure;
	}

	if (data[DCB_FEATCFG_ATTR_ALL])
		getall = 1;

	for (i = DCB_FEATCFG_ATTR_ALL+1; i <= DCB_FEATCFG_ATTR_MAX; i++) {
		if (!getall && !data[i])
			continue;

		ret = netdev->dcbnl_ops->getfeatcfg(netdev, i, &value);
		if (!ret)
			ret = FUNC7(dcbnl_skb, i, value);

		if (ret) {
			FUNC3(dcbnl_skb, nest);
			goto nla_put_failure;
		}
	}
	FUNC4(dcbnl_skb, nest);

	FUNC9(dcbnl_skb, nlh);

	return FUNC11(dcbnl_skb, &init_net, pid);
nla_put_failure:
	FUNC8(dcbnl_skb, nlh);
nlmsg_failure:
	FUNC2(dcbnl_skb);
err_out:
	return ret;
}