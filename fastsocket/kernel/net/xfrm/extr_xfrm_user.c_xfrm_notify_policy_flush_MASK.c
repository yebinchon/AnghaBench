#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct km_event {TYPE_1__ data; int /*<<< orphan*/  seq; int /*<<< orphan*/  pid; struct net* net; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  XFRMNLGRP_POLICY ; 
 int /*<<< orphan*/  XFRM_MSG_FLUSHPOLICY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct km_event *c)
{
	struct net *net = c->net;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;

	skb = FUNC4(FUNC6(), GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	nlh = FUNC5(skb, c->pid, c->seq, XFRM_MSG_FLUSHPOLICY, 0, 0);
	if (nlh == NULL)
		goto nlmsg_failure;
	if (FUNC0(c->data.type, skb) < 0)
		goto nlmsg_failure;

	FUNC2(skb, nlh);

	return FUNC3(net->xfrm.nlsk, skb, 0, XFRMNLGRP_POLICY, GFP_ATOMIC);

nlmsg_failure:
	FUNC1(skb);
	return -1;
}