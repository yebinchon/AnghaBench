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
struct xfrm_userpolicy_info {int dummy; } ;
struct xfrm_userpolicy_id {int dir; int /*<<< orphan*/  sel; int /*<<< orphan*/  index; } ;
struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int /*<<< orphan*/  mark; int /*<<< orphan*/  type; int /*<<< orphan*/  selector; int /*<<< orphan*/  index; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {scalar_t__ byid; } ;
struct km_event {TYPE_1__ data; int /*<<< orphan*/  event; int /*<<< orphan*/  seq; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  XFRMA_POLICY ; 
 int /*<<< orphan*/  XFRMNLGRP_POLICY ; 
 int /*<<< orphan*/  XFRM_MSG_DELPOLICY ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,struct xfrm_userpolicy_info*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct xfrm_policy*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_userpolicy_id*,int /*<<< orphan*/ ,int) ; 
 struct xfrm_userpolicy_info* FUNC7 (struct nlattr*) ; 
 struct nlattr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 void* FUNC10 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC13 (int,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct net* FUNC17 (struct xfrm_policy*) ; 

__attribute__((used)) static int FUNC18(struct xfrm_policy *xp, int dir, struct km_event *c)
{
	struct net *net = FUNC17(xp);
	struct xfrm_userpolicy_info *p;
	struct xfrm_userpolicy_id *id;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	int len = FUNC9(sizeof(struct xfrm_user_tmpl) * xp->xfrm_nr);
	int headlen;

	headlen = sizeof(*p);
	if (c->event == XFRM_MSG_DELPOLICY) {
		len += FUNC9(headlen);
		headlen = sizeof(*id);
	}
	len += FUNC15();
	len += FUNC9(sizeof(struct xfrm_mark));
	len += FUNC0(headlen);

	skb = FUNC13(len, GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	nlh = FUNC14(skb, c->pid, c->seq, c->event, headlen, 0);
	if (nlh == NULL)
		goto nlmsg_failure;

	p = FUNC10(nlh);
	if (c->event == XFRM_MSG_DELPOLICY) {
		struct nlattr *attr;

		id = FUNC10(nlh);
		FUNC6(id, 0, sizeof(*id));
		id->dir = dir;
		if (c->data.byid)
			id->index = xp->index;
		else
			FUNC5(&id->sel, &xp->selector, sizeof(id->sel));

		attr = FUNC8(skb, XFRMA_POLICY, sizeof(*p));
		if (attr == NULL)
			goto nlmsg_failure;

		p = FUNC7(attr);
	}

	FUNC1(xp, p, dir);
	if (FUNC3(xp, skb) < 0)
		goto nlmsg_failure;
	if (FUNC2(xp->type, skb) < 0)
		goto nlmsg_failure;

	if (FUNC16(skb, &xp->mark))
		goto nla_put_failure;

	FUNC11(skb, nlh);

	return FUNC12(net->xfrm.nlsk, skb, 0, XFRMNLGRP_POLICY, GFP_ATOMIC);

nla_put_failure:
nlmsg_failure:
	FUNC4(skb);
	return -1;
}