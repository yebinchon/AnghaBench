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
struct sk_buff {int dummy; } ;
struct rt6_info {int dummy; } ;
struct nl_info {TYPE_1__* nlh; int /*<<< orphan*/  pid; struct net* nl_net; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  RTNLGRP_IPV6_ROUTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net*,struct sk_buff*,struct rt6_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ,int) ; 

void FUNC8(int event, struct rt6_info *rt, struct nl_info *info)
{
	struct sk_buff *skb;
	struct net *net = info->nl_net;
	u32 seq;
	int err;

	err = -ENOBUFS;
	seq = info->nlh != NULL ? info->nlh->nlmsg_seq : 0;

	skb = FUNC3(FUNC5(), FUNC1());
	if (skb == NULL)
		goto errout;

	err = FUNC4(net, skb, rt, NULL, NULL, 0,
				event, info->pid, seq, 0, 0, 0);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in rt6_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC2(skb);
		goto errout;
	}
	FUNC6(skb, net, info->pid, RTNLGRP_IPV6_ROUTE,
		    info->nlh, FUNC1());
	return;
errout:
	if (err < 0)
		FUNC7(net, RTNLGRP_IPV6_ROUTE, err);
}