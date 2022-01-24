#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfrm_usersa_info {int dummy; } ;
struct xfrm_usersa_id {int /*<<< orphan*/  proto; int /*<<< orphan*/  family; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  family; } ;
struct xfrm_state {TYPE_2__ id; TYPE_1__ props; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_3__ xfrm; } ;
struct km_event {int /*<<< orphan*/  event; int /*<<< orphan*/  seq; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  XFRMA_SA ; 
 int /*<<< orphan*/  XFRMNLGRP_SA ; 
 int /*<<< orphan*/  XFRM_MSG_DELSA ; 
 scalar_t__ FUNC2 (struct xfrm_state*,struct xfrm_usersa_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct xfrm_usersa_info* FUNC5 (struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 
 void* FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xfrm_state*) ; 
 struct net* FUNC14 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC15(struct xfrm_state *x, struct km_event *c)
{
	struct net *net = FUNC14(x);
	struct xfrm_usersa_info *p;
	struct xfrm_usersa_id *id;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	int len = FUNC13(x);
	int headlen;

	headlen = sizeof(*p);
	if (c->event == XFRM_MSG_DELSA) {
		len += FUNC7(headlen);
		headlen = sizeof(*id);
		len += FUNC7(sizeof(struct xfrm_mark));
	}
	len += FUNC0(headlen);

	skb = FUNC11(len, GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	nlh = FUNC12(skb, c->pid, c->seq, c->event, headlen, 0);
	if (nlh == NULL)
		goto nla_put_failure;

	p = FUNC8(nlh);
	if (c->event == XFRM_MSG_DELSA) {
		struct nlattr *attr;

		id = FUNC8(nlh);
		FUNC4(&id->daddr, &x->id.daddr, sizeof(id->daddr));
		id->spi = x->id.spi;
		id->family = x->props.family;
		id->proto = x->id.proto;

		attr = FUNC6(skb, XFRMA_SA, sizeof(*p));
		if (attr == NULL)
			goto nla_put_failure;

		p = FUNC5(attr);
	}

	if (FUNC2(x, p, skb))
		goto nla_put_failure;

	FUNC9(skb, nlh);

	return FUNC10(net->xfrm.nlsk, skb, 0, XFRMNLGRP_SA, GFP_ATOMIC);

nla_put_failure:
	/* Somebody screwed up with xfrm_sa_len! */
	FUNC1(1);
	FUNC3(skb);
	return -1;
}