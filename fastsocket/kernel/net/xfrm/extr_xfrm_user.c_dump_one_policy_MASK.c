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
struct xfrm_userpolicy_info {int dummy; } ;
struct xfrm_policy {int /*<<< orphan*/  mark; int /*<<< orphan*/  type; } ;
struct xfrm_dump_info {int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  XFRM_MSG_NEWPOLICY ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,struct xfrm_userpolicy_info*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct xfrm_policy*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct xfrm_policy*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xfrm_userpolicy_info* FUNC6 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct xfrm_policy *xp, int dir, int count, void *ptr)
{
	struct xfrm_dump_info *sp = ptr;
	struct xfrm_userpolicy_info *p;
	struct sk_buff *in_skb = sp->in_skb;
	struct sk_buff *skb = sp->out_skb;
	struct nlmsghdr *nlh;

	nlh = FUNC8(skb, FUNC0(in_skb).pid, sp->nlmsg_seq,
			XFRM_MSG_NEWPOLICY, sizeof(*p), sp->nlmsg_flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	p = FUNC6(nlh);
	FUNC1(xp, p, dir);
	if (FUNC4(xp, skb) < 0)
		goto nlmsg_failure;
	if (FUNC3(xp, skb))
		goto nlmsg_failure;
	if (FUNC2(xp->type, skb) < 0)
		goto nlmsg_failure;
	if (FUNC9(skb, &xp->mark))
		goto nla_put_failure;

	FUNC7(skb, nlh);
	return 0;

nla_put_failure:
nlmsg_failure:
	FUNC5(skb, nlh);
	return -EMSGSIZE;
}