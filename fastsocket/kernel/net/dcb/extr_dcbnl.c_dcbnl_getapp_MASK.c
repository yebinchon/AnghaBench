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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct dcbmsg {int /*<<< orphan*/  cmd; int /*<<< orphan*/  dcb_family; } ;
struct dcb_app {scalar_t__ selector; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {scalar_t__ (* getapp ) (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 size_t DCB_APP_ATTR_ID ; 
 size_t DCB_APP_ATTR_IDTYPE ; 
 int /*<<< orphan*/  DCB_APP_ATTR_MAX ; 
 size_t DCB_APP_ATTR_PRIORITY ; 
 scalar_t__ DCB_APP_IDTYPE_ETHTYPE ; 
 scalar_t__ DCB_APP_IDTYPE_PORTNUM ; 
 size_t DCB_ATTR_APP ; 
 int /*<<< orphan*/  DCB_CMD_GAPP ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dcbmsg* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 scalar_t__ FUNC2 (struct net_device*,struct dcb_app*) ; 
 int /*<<< orphan*/  dcbnl_app_nest ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC8 (struct sk_buff*,size_t) ; 
 int FUNC9 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct net_device *netdev, struct nlattr **tb,
                        u32 pid, u32 seq, u16 flags)
{
	struct sk_buff *dcbnl_skb;
	struct nlmsghdr *nlh;
	struct dcbmsg *dcb;
	struct nlattr *app_nest;
	struct nlattr *app_tb[DCB_APP_ATTR_MAX + 1];
	u16 id;
	u8 up, idtype;
	int ret = -EINVAL;

	if (!tb[DCB_ATTR_APP])
		goto out;

	ret = FUNC9(app_tb, DCB_APP_ATTR_MAX, tb[DCB_ATTR_APP],
	                       dcbnl_app_nest);
	if (ret)
		goto out;

	ret = -EINVAL;
	/* all must be non-null */
	if ((!app_tb[DCB_APP_ATTR_IDTYPE]) ||
	    (!app_tb[DCB_APP_ATTR_ID]))
		goto out;

	/* either by eth type or by socket number */
	idtype = FUNC5(app_tb[DCB_APP_ATTR_IDTYPE]);
	if ((idtype != DCB_APP_IDTYPE_ETHTYPE) &&
	    (idtype != DCB_APP_IDTYPE_PORTNUM))
		goto out;

	id = FUNC4(app_tb[DCB_APP_ATTR_ID]);

	if (netdev->dcbnl_ops->getapp) {
		up = netdev->dcbnl_ops->getapp(netdev, idtype, id);
	} else {
		struct dcb_app app = {
					.selector = idtype,
					.protocol = id,
				     };
		up = FUNC2(netdev, &app);
	}

	/* send this back */
	dcbnl_skb = FUNC13(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!dcbnl_skb)
		goto out;

	nlh = FUNC1(dcbnl_skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);
	dcb = FUNC0(nlh);
	dcb->dcb_family = AF_UNSPEC;
	dcb->cmd = DCB_CMD_GAPP;

	app_nest = FUNC8(dcbnl_skb, DCB_ATTR_APP);
	if (!app_nest)
		goto out_cancel;

	ret = FUNC11(dcbnl_skb, DCB_APP_ATTR_IDTYPE, idtype);
	if (ret)
		goto out_cancel;

	ret = FUNC10(dcbnl_skb, DCB_APP_ATTR_ID, id);
	if (ret)
		goto out_cancel;

	ret = FUNC11(dcbnl_skb, DCB_APP_ATTR_PRIORITY, up);
	if (ret)
		goto out_cancel;

	FUNC7(dcbnl_skb, app_nest);
	FUNC12(dcbnl_skb, nlh);

	ret = FUNC14(dcbnl_skb, &init_net, pid);
	if (ret)
		goto nlmsg_failure;

	goto out;

out_cancel:
	FUNC6(dcbnl_skb, app_nest);
nlmsg_failure:
	FUNC3(dcbnl_skb);
out:
	return ret;
}