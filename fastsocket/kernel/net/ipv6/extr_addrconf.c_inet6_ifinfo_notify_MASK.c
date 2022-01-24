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
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RTNLGRP_IPV6_IFADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct inet6_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ,int) ; 

void FUNC8(int event, struct inet6_dev *idev)
{
	struct sk_buff *skb;
	struct net *net = FUNC1(idev->dev);
	int err = -ENOBUFS;

	skb = FUNC5(FUNC3(), GFP_ATOMIC);
	if (skb == NULL)
		goto errout;

	err = FUNC2(skb, idev, 0, 0, event, 0);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in inet6_if_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC4(skb);
		goto errout;
	}
	FUNC6(skb, net, 0, RTNLGRP_IPV6_IFADDR, NULL, GFP_ATOMIC);
	return;
errout:
	if (err < 0)
		FUNC7(net, RTNLGRP_IPV6_IFADDR, err);
}