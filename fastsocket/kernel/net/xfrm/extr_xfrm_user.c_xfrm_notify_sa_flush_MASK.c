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
struct xfrm_usersa_flush {int /*<<< orphan*/  proto; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {int /*<<< orphan*/  proto; } ;
struct km_event {TYPE_1__ data; int /*<<< orphan*/  seq; int /*<<< orphan*/  pid; struct net* net; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  XFRMNLGRP_SA ; 
 int /*<<< orphan*/  XFRM_MSG_FLUSHSA ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct xfrm_usersa_flush* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct km_event *c)
{
	struct net *net = c->net;
	struct xfrm_usersa_flush *p;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	int len = FUNC0(sizeof(struct xfrm_usersa_flush));

	skb = FUNC5(len, GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	nlh = FUNC6(skb, c->pid, c->seq, XFRM_MSG_FLUSHSA, sizeof(*p), 0);
	if (nlh == NULL) {
		FUNC1(skb);
		return -EMSGSIZE;
	}

	p = FUNC2(nlh);
	p->proto = c->data.proto;

	FUNC3(skb, nlh);

	return FUNC4(net->xfrm.nlsk, skb, 0, XFRMNLGRP_SA, GFP_ATOMIC);
}