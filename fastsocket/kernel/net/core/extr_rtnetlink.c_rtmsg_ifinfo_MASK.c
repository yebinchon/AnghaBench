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
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTNLGRP_LINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net* FUNC1 (struct net_device*) ; 
 size_t FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ,int) ; 

void FUNC8(int type, struct net_device *dev, unsigned change)
{
	struct net *net = FUNC1(dev);
	struct sk_buff *skb;
	int err = -ENOBUFS;
	size_t if_info_size;

	skb = FUNC4((if_info_size = FUNC2(dev, 0)), GFP_KERNEL);
	if (skb == NULL)
		goto errout;

	err = FUNC5(skb, dev, type, 0, 0, change, 0, 0);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in if_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC3(skb);
		goto errout;
	}
	FUNC6(skb, net, 0, RTNLGRP_LINK, NULL, GFP_KERNEL);
	return;
errout:
	if (err < 0)
		FUNC7(net, RTNLGRP_LINK, err);
}