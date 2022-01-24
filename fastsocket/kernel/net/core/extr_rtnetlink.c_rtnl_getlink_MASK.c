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
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifla_policy ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct ifinfomsg* FUNC7 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct nlmsghdr* nlh, void *arg)
{
	struct net *net = FUNC12(skb->sk);
	struct ifinfomsg *ifm;
	struct nlattr *tb[IFLA_MAX+1];
	struct net_device *dev = NULL;
	struct sk_buff *nskb;
	int err;
	u32 ext_filter_mask = 0;

	err = FUNC9(nlh, sizeof(*ifm), tb, IFLA_MAX, ifla_policy);
	if (err < 0)
		return err;

	ext_filter_mask = FUNC4(tb);

	ifm = FUNC7(nlh);
	if (ifm->ifi_index > 0) {
		dev = FUNC2(net, ifm->ifi_index);
		if (dev == NULL)
			return -ENODEV;
	} else
		return -EINVAL;

	nskb = FUNC8(FUNC5(dev, ext_filter_mask), GFP_KERNEL);
	if (nskb == NULL) {
		err = -ENOBUFS;
		goto errout;
	}

	err = FUNC10(nskb, dev, RTM_NEWLINK, FUNC0(skb).pid,
			       nlh->nlmsg_seq, 0, 0, ext_filter_mask);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in if_nlmsg_size */
		FUNC1(err == -EMSGSIZE);
		FUNC6(nskb);
		goto errout;
	}
	err = FUNC11(nskb, net, FUNC0(skb).pid);
errout:
	FUNC3(dev);

	return err;
}