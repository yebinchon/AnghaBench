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
struct TYPE_2__ {int /*<<< orphan*/  (* getpfccfg ) (struct net_device*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 size_t DCB_ATTR_PFC_CFG ; 
 int /*<<< orphan*/  DCB_CMD_PFC_GCFG ; 
 int DCB_PFC_UP_ATTR_0 ; 
 int DCB_PFC_UP_ATTR_7 ; 
 size_t DCB_PFC_UP_ATTR_ALL ; 
 int /*<<< orphan*/  DCB_PFC_UP_ATTR_MAX ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dcbmsg* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 int /*<<< orphan*/  dcbnl_pfc_up_nest ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,size_t) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct net_device *netdev, struct nlattr **tb,
                           u32 pid, u32 seq, u16 flags)
{
	struct sk_buff *dcbnl_skb;
	struct nlmsghdr *nlh;
	struct dcbmsg *dcb;
	struct nlattr *data[DCB_PFC_UP_ATTR_MAX + 1], *nest;
	u8 value;
	int ret = -EINVAL;
	int i;
	int getall = 0;

	if (!tb[DCB_ATTR_PFC_CFG] || !netdev->dcbnl_ops->getpfccfg)
		return ret;

	ret = FUNC6(data, DCB_PFC_UP_ATTR_MAX,
	                       tb[DCB_ATTR_PFC_CFG],
	                       dcbnl_pfc_up_nest);
	if (ret)
		goto err_out;

	dcbnl_skb = FUNC9(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!dcbnl_skb)
		goto err_out;

	nlh = FUNC1(dcbnl_skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);

	dcb = FUNC0(nlh);
	dcb->dcb_family = AF_UNSPEC;
	dcb->cmd = DCB_CMD_PFC_GCFG;

	nest = FUNC5(dcbnl_skb, DCB_ATTR_PFC_CFG);
	if (!nest)
		goto err;

	if (data[DCB_PFC_UP_ATTR_ALL])
		getall = 1;

	for (i = DCB_PFC_UP_ATTR_0; i <= DCB_PFC_UP_ATTR_7; i++) {
		if (!getall && !data[i])
			continue;

		netdev->dcbnl_ops->getpfccfg(netdev, i - DCB_PFC_UP_ATTR_0,
		                             &value);
		ret = FUNC7(dcbnl_skb, i, value);

		if (ret) {
			FUNC3(dcbnl_skb, nest);
			goto err;
		}
	}
	FUNC4(dcbnl_skb, nest);

	FUNC8(dcbnl_skb, nlh);

	ret = FUNC10(dcbnl_skb, &init_net, pid);
	if (ret)
		goto err_out;

	return 0;
nlmsg_failure:
err:
	FUNC2(dcbnl_skb);
err_out:
	return -EINVAL;
}