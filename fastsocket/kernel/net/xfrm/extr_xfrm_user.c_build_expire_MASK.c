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
struct xfrm_user_expire {int hard; int /*<<< orphan*/  state; } ;
struct xfrm_state {int /*<<< orphan*/  mark; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ hard; } ;
struct km_event {TYPE_1__ data; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  XFRM_MSG_EXPIRE ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*,int /*<<< orphan*/ *) ; 
 struct xfrm_user_expire* FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct xfrm_state *x, struct km_event *c)
{
	struct xfrm_user_expire *ue;
	struct nlmsghdr *nlh;

	nlh = FUNC3(skb, c->pid, 0, XFRM_MSG_EXPIRE, sizeof(*ue), 0);
	if (nlh == NULL)
		return -EMSGSIZE;

	ue = FUNC1(nlh);
	FUNC0(x, &ue->state);
	ue->hard = (c->data.hard != 0) ? 1 : 0;

	if (FUNC4(skb, &x->mark))
		goto nla_put_failure;

	return FUNC2(skb, nlh);

nla_put_failure:
	return -EMSGSIZE;
}