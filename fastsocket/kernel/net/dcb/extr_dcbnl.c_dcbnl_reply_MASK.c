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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct dcbmsg {scalar_t__ dcb_pad; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dcb_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dcbmsg* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(u8 value, u8 event, u8 cmd, u8 attr, u32 pid,
                       u32 seq, u16 flags)
{
	struct sk_buff *dcbnl_skb;
	struct dcbmsg *dcb;
	struct nlmsghdr *nlh;
	int ret = -EINVAL;

	dcbnl_skb = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!dcbnl_skb)
		return ret;

	nlh = FUNC1(dcbnl_skb, pid, seq, event, sizeof(*dcb), flags);

	dcb = FUNC0(nlh);
	dcb->dcb_family = AF_UNSPEC;
	dcb->cmd = cmd;
	dcb->dcb_pad = 0;

	ret = FUNC3(dcbnl_skb, attr, value);
	if (ret)
		goto err;

	/* end the message, assign the nlmsg_len. */
	FUNC4(dcbnl_skb, nlh);
	ret = FUNC6(dcbnl_skb, &init_net, pid);
	if (ret)
		return -EINVAL;

	return 0;
nlmsg_failure:
err:
	FUNC2(dcbnl_skb);
	return ret;
}