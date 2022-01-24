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
struct TYPE_2__ {int /*<<< orphan*/  (* getbcncfg ) (struct net_device*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* getbcnrp ) (struct net_device*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 size_t DCB_ATTR_BCN ; 
 size_t DCB_BCN_ATTR_ALL ; 
 int DCB_BCN_ATTR_BCNA_0 ; 
 int /*<<< orphan*/  DCB_BCN_ATTR_MAX ; 
 int DCB_BCN_ATTR_RI ; 
 int DCB_BCN_ATTR_RP_0 ; 
 int DCB_BCN_ATTR_RP_7 ; 
 int /*<<< orphan*/  DCB_CMD_BCN_GCFG ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dcbmsg* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 int /*<<< orphan*/  dcbnl_bcn_nest ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,size_t) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct net_device *netdev, struct nlattr **tb,
                            u32 pid, u32 seq, u16 flags)
{
	struct sk_buff *dcbnl_skb;
	struct nlmsghdr *nlh;
	struct dcbmsg *dcb;
	struct nlattr *bcn_nest;
	struct nlattr *bcn_tb[DCB_BCN_ATTR_MAX + 1];
	u8 value_byte;
	u32 value_integer;
	int ret  = -EINVAL;
	bool getall = false;
	int i;

	if (!tb[DCB_ATTR_BCN] || !netdev->dcbnl_ops->getbcnrp ||
	    !netdev->dcbnl_ops->getbcncfg)
		return ret;

	ret = FUNC6(bcn_tb, DCB_BCN_ATTR_MAX,
	                       tb[DCB_ATTR_BCN], dcbnl_bcn_nest);

	if (ret)
		goto err_out;

	dcbnl_skb = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!dcbnl_skb)
		goto err_out;

	nlh = FUNC1(dcbnl_skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);

	dcb = FUNC0(nlh);
	dcb->dcb_family = AF_UNSPEC;
	dcb->cmd = DCB_CMD_BCN_GCFG;

	bcn_nest = FUNC5(dcbnl_skb, DCB_ATTR_BCN);
	if (!bcn_nest)
		goto err;

	if (bcn_tb[DCB_BCN_ATTR_ALL])
		getall = true;

	for (i = DCB_BCN_ATTR_RP_0; i <= DCB_BCN_ATTR_RP_7; i++) {
		if (!getall && !bcn_tb[i])
			continue;

		netdev->dcbnl_ops->getbcnrp(netdev, i - DCB_BCN_ATTR_RP_0,
		                            &value_byte);
		ret = FUNC8(dcbnl_skb, i, value_byte);
		if (ret)
			goto err_bcn;
	}

	for (i = DCB_BCN_ATTR_BCNA_0; i <= DCB_BCN_ATTR_RI; i++) {
		if (!getall && !bcn_tb[i])
			continue;

		netdev->dcbnl_ops->getbcncfg(netdev, i,
		                             &value_integer);
		ret = FUNC7(dcbnl_skb, i, value_integer);
		if (ret)
			goto err_bcn;
	}

	FUNC4(dcbnl_skb, bcn_nest);

	FUNC9(dcbnl_skb, nlh);

	ret = FUNC11(dcbnl_skb, &init_net, pid);
	if (ret)
		goto err_out;

	return 0;

err_bcn:
	FUNC3(dcbnl_skb, bcn_nest);
nlmsg_failure:
err:
	FUNC2(dcbnl_skb);
err_out:
	ret  = -EINVAL;
	return ret;
}