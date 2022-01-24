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
struct xfrm_user_polexpire {int hard; int /*<<< orphan*/  pol; } ;
struct xfrm_policy {int /*<<< orphan*/  mark; int /*<<< orphan*/  type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {int hard; } ;
struct km_event {int /*<<< orphan*/  pid; TYPE_1__ data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  XFRM_MSG_POLEXPIRE ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct xfrm_policy*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct xfrm_policy*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xfrm_user_polexpire* FUNC5 (struct nlmsghdr*) ; 
 int FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct xfrm_policy *xp,
			   int dir, struct km_event *c)
{
	struct xfrm_user_polexpire *upe;
	struct nlmsghdr *nlh;
	int hard = c->data.hard;

	nlh = FUNC7(skb, c->pid, 0, XFRM_MSG_POLEXPIRE, sizeof(*upe), 0);
	if (nlh == NULL)
		return -EMSGSIZE;

	upe = FUNC5(nlh);
	FUNC0(xp, &upe->pol, dir);
	if (FUNC3(xp, skb) < 0)
		goto nlmsg_failure;
	if (FUNC2(xp, skb))
		goto nlmsg_failure;
	if (FUNC1(xp->type, skb) < 0)
		goto nlmsg_failure;
	if (FUNC8(skb, &xp->mark))
		goto nla_put_failure;
	upe->hard = !!hard;

	return FUNC6(skb, nlh);

nla_put_failure:
nlmsg_failure:
	FUNC4(skb, nlh);
	return -EMSGSIZE;
}