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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbmsg {int cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 size_t DCB_ATTR_IFNAME ; 
 int /*<<< orphan*/  DCB_ATTR_MAX ; 
#define  DCB_CMD_BCN_GCFG 154 
#define  DCB_CMD_BCN_SCFG 153 
#define  DCB_CMD_CEE_GET 152 
#define  DCB_CMD_GAPP 151 
#define  DCB_CMD_GCAP 150 
#define  DCB_CMD_GDCBX 149 
#define  DCB_CMD_GFEATCFG 148 
#define  DCB_CMD_GNUMTCS 147 
#define  DCB_CMD_GPERM_HWADDR 146 
#define  DCB_CMD_GSTATE 145 
#define  DCB_CMD_IEEE_DEL 144 
#define  DCB_CMD_IEEE_GET 143 
#define  DCB_CMD_IEEE_SET 142 
#define  DCB_CMD_PFC_GCFG 141 
#define  DCB_CMD_PFC_GSTATE 140 
#define  DCB_CMD_PFC_SCFG 139 
#define  DCB_CMD_PFC_SSTATE 138 
#define  DCB_CMD_PGRX_GCFG 137 
#define  DCB_CMD_PGRX_SCFG 136 
#define  DCB_CMD_PGTX_GCFG 135 
#define  DCB_CMD_PGTX_SCFG 134 
#define  DCB_CMD_SAPP 133 
#define  DCB_CMD_SDCBX 132 
#define  DCB_CMD_SET_ALL 131 
#define  DCB_CMD_SFEATCFG 130 
#define  DCB_CMD_SNUMTCS 129 
#define  DCB_CMD_SSTATE 128 
 int EINVAL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcbnl_rtnl_policy ; 
 int FUNC21 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct net_device*,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC31 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct nlattr*) ; 
 int FUNC33 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC34 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC35(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC34(skb->sk);
	struct net_device *netdev;
	struct dcbmsg  *dcb = (struct dcbmsg *)FUNC1(nlh);
	struct nlattr *tb[DCB_ATTR_MAX + 1];
	u32 pid = skb ? FUNC0(skb).pid : 0;
	int ret = -EINVAL;

	if (!FUNC31(net, &init_net))
		return -EINVAL;

	ret = FUNC33(nlh, sizeof(*dcb), tb, DCB_ATTR_MAX,
			  dcbnl_rtnl_policy);
	if (ret < 0)
		return ret;

	if (!tb[DCB_ATTR_IFNAME])
		return -EINVAL;

	netdev = FUNC29(&init_net, FUNC32(tb[DCB_ATTR_IFNAME]));
	if (!netdev)
		return -EINVAL;

	if (!netdev->dcbnl_ops)
		goto errout;

	switch (dcb->cmd) {
	case DCB_CMD_GSTATE:
		ret = FUNC13(netdev, tb, pid, nlh->nlmsg_seq,
		                     nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_PFC_GCFG:
		ret = FUNC11(netdev, tb, pid, nlh->nlmsg_seq,
		                      nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_GPERM_HWADDR:
		ret = FUNC10(netdev, tb, pid, nlh->nlmsg_seq,
		                           nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_PGTX_GCFG:
		ret = FUNC19(netdev, tb, pid, nlh->nlmsg_seq,
		                        nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_PGRX_GCFG:
		ret = FUNC17(netdev, tb, pid, nlh->nlmsg_seq,
		                        nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_BCN_GCFG:
		ret = FUNC2(netdev, tb, pid, nlh->nlmsg_seq,
		                       nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_SSTATE:
		ret = FUNC28(netdev, tb, pid, nlh->nlmsg_seq,
		                     nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_PFC_SCFG:
		ret = FUNC26(netdev, tb, pid, nlh->nlmsg_seq,
		                      nlh->nlmsg_flags);
		goto out;

	case DCB_CMD_SET_ALL:
		ret = FUNC21(netdev, tb, pid, nlh->nlmsg_seq,
		                   nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_PGTX_SCFG:
		ret = FUNC20(netdev, tb, pid, nlh->nlmsg_seq,
		                        nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_PGRX_SCFG:
		ret = FUNC18(netdev, tb, pid, nlh->nlmsg_seq,
		                        nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_GCAP:
		ret = FUNC6(netdev, tb, pid, nlh->nlmsg_seq,
		                   nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_GNUMTCS:
		ret = FUNC9(netdev, tb, pid, nlh->nlmsg_seq,
		                      nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_SNUMTCS:
		ret = FUNC25(netdev, tb, pid, nlh->nlmsg_seq,
		                      nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_PFC_GSTATE:
		ret = FUNC12(netdev, tb, pid, nlh->nlmsg_seq,
		                        nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_PFC_SSTATE:
		ret = FUNC27(netdev, tb, pid, nlh->nlmsg_seq,
		                        nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_BCN_SCFG:
		ret = FUNC3(netdev, tb, pid, nlh->nlmsg_seq,
		                       nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_GAPP:
		ret = FUNC5(netdev, tb, pid, nlh->nlmsg_seq,
		                   nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_SAPP:
		ret = FUNC22(netdev, tb, pid, nlh->nlmsg_seq,
		                   nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_IEEE_SET:
		ret = FUNC16(netdev, tb, pid, nlh->nlmsg_seq,
				     nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_IEEE_GET:
		ret = FUNC15(netdev, tb, pid, nlh->nlmsg_seq,
				     nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_IEEE_DEL:
		ret = FUNC14(netdev, tb, pid, nlh->nlmsg_seq,
				     nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_GDCBX:
		ret = FUNC7(netdev, tb, pid, nlh->nlmsg_seq,
				    nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_SDCBX:
		ret = FUNC23(netdev, tb, pid, nlh->nlmsg_seq,
				    nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_GFEATCFG:
		ret = FUNC8(netdev, tb, pid, nlh->nlmsg_seq,
				       nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_SFEATCFG:
		ret = FUNC24(netdev, tb, pid, nlh->nlmsg_seq,
				       nlh->nlmsg_flags);
		goto out;
	case DCB_CMD_CEE_GET:
		ret = FUNC4(netdev, tb, pid, nlh->nlmsg_seq,
				    nlh->nlmsg_flags);
		goto out;
	default:
		goto errout;
	}
errout:
	ret = -EINVAL;
out:
	FUNC30(netdev);
	return ret;
}