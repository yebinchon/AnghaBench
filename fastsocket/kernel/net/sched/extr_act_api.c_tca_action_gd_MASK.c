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
typedef  int /*<<< orphan*/  u32 ;
struct tc_action {int order; struct tc_action* next; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct tc_action*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NLM_F_ECHO ; 
 int NLM_F_ROOT ; 
 int FUNC1 (struct tc_action*) ; 
 int RTM_DELACTION ; 
 int RTM_GETACTION ; 
 int /*<<< orphan*/  RTNLGRP_TC ; 
 int TCA_ACT_MAX_PRIO ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nlmsghdr*,struct tc_action*,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tc_action*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct nlattr*,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,struct tc_action*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tc_action*,int /*<<< orphan*/ ) ; 
 struct tc_action* FUNC11 (struct nlattr*,struct nlmsghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct nlattr *nla, struct nlmsghdr *n, u32 pid, int event)
{
	int i, ret;
	struct nlattr *tb[TCA_ACT_MAX_PRIO+1];
	struct tc_action *head = NULL, *act, *act_prev = NULL;

	ret = FUNC6(tb, TCA_ACT_MAX_PRIO, nla, NULL);
	if (ret < 0)
		return ret;

	if (event == RTM_DELACTION && n->nlmsg_flags&NLM_F_ROOT) {
		if (tb[1] != NULL)
			return FUNC8(tb[1], n, pid);
		else
			return -EINVAL;
	}

	for (i = 1; i <= TCA_ACT_MAX_PRIO && tb[i]; i++) {
		act = FUNC11(tb[i], n, pid);
		if (FUNC0(act)) {
			ret = FUNC1(act);
			goto err;
		}
		act->order = i;

		if (head == NULL)
			head = act;
		else
			act_prev->next = act;
		act_prev = act;
	}

	if (event == RTM_GETACTION)
		ret = FUNC2(pid, n, head, event);
	else { /* delete */
		struct sk_buff *skb;

		skb = FUNC3(NLMSG_GOODSIZE, GFP_KERNEL);
		if (!skb) {
			ret = -ENOBUFS;
			goto err;
		}

		if (FUNC9(skb, head, pid, n->nlmsg_seq, 0, event,
				 0, 1) <= 0) {
			FUNC5(skb);
			ret = -EINVAL;
			goto err;
		}

		/* now do the delete */
		FUNC10(head, 0);
		ret = FUNC7(skb, &init_net, pid, RTNLGRP_TC,
				     n->nlmsg_flags&NLM_F_ECHO);
		if (ret > 0)
			return 0;
		return ret;
	}
err:
	FUNC4(head);
	return ret;
}