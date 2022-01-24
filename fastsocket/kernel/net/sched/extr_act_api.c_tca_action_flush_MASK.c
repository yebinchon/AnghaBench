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
struct tcamsg {scalar_t__ tca__pad2; scalar_t__ tca__pad1; int /*<<< orphan*/  tca_family; } ;
struct tc_action {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct TYPE_2__ {int (* walk ) (struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct tc_action*) ;int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tcamsg* FUNC0 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int NLM_F_ECHO ; 
 int NLM_F_ROOT ; 
 int /*<<< orphan*/  RTM_DELACTION ; 
 int /*<<< orphan*/  RTNLGRP_TC ; 
 size_t TCA_ACT_KIND ; 
 int /*<<< orphan*/  TCA_ACT_MAX ; 
 int /*<<< orphan*/  TCA_ACT_TAB ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tc_action* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC4 (struct tc_action*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct tc_action*) ; 
 TYPE_1__* FUNC14 (struct nlattr*) ; 

__attribute__((used)) static int FUNC15(struct nlattr *nla, struct nlmsghdr *n, u32 pid)
{
	struct sk_buff *skb;
	unsigned char *b;
	struct nlmsghdr *nlh;
	struct tcamsg *t;
	struct netlink_callback dcb;
	struct nlattr *nest;
	struct nlattr *tb[TCA_ACT_MAX+1];
	struct nlattr *kind;
	struct tc_action *a = FUNC3(0);
	int err = -ENOMEM;

	if (a == NULL) {
		FUNC10("tca_action_flush: couldnt create tc_action\n");
		return err;
	}

	skb = FUNC2(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb) {
		FUNC10("tca_action_flush: failed skb alloc\n");
		FUNC4(a);
		return err;
	}

	b = FUNC12(skb);

	err = FUNC9(tb, TCA_ACT_MAX, nla, NULL);
	if (err < 0)
		goto err_out;

	err = -EINVAL;
	kind = tb[TCA_ACT_KIND];
	a->ops = FUNC14(kind);
	if (a->ops == NULL)
		goto err_out;

	nlh = FUNC1(skb, pid, n->nlmsg_seq, RTM_DELACTION, sizeof(*t));
	t = FUNC0(nlh);
	t->tca_family = AF_UNSPEC;
	t->tca__pad1 = 0;
	t->tca__pad2 = 0;

	nest = FUNC8(skb, TCA_ACT_TAB);
	if (nest == NULL)
		goto nla_put_failure;

	err = a->ops->walk(skb, &dcb, RTM_DELACTION, a);
	if (err < 0)
		goto nla_put_failure;
	if (err == 0)
		goto noflush_out;

	FUNC7(skb, nest);

	nlh->nlmsg_len = FUNC12(skb) - b;
	nlh->nlmsg_flags |= NLM_F_ROOT;
	FUNC6(a->ops->owner);
	FUNC4(a);
	err = FUNC11(skb, &init_net, pid, RTNLGRP_TC, n->nlmsg_flags&NLM_F_ECHO);
	if (err > 0)
		return 0;

	return err;

nla_put_failure:
nlmsg_failure:
	FUNC6(a->ops->owner);
err_out:
noflush_out:
	FUNC5(skb);
	FUNC4(a);
	return err;
}