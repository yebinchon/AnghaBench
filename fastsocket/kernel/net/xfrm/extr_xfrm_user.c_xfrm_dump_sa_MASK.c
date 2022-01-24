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
struct xfrm_state_walk {int dummy; } ;
struct xfrm_dump_info {int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; struct sk_buff* out_skb; int /*<<< orphan*/  in_skb; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  dump_one_state ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct xfrm_state_walk*,int /*<<< orphan*/ ,struct xfrm_dump_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state_walk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC1(skb->sk);
	struct xfrm_state_walk *walk = (struct xfrm_state_walk *) &cb->args[1];
	struct xfrm_dump_info info;

	FUNC0(sizeof(struct xfrm_state_walk) >
		     sizeof(cb->args) - sizeof(cb->args[0]));

	info.in_skb = cb->skb;
	info.out_skb = skb;
	info.nlmsg_seq = cb->nlh->nlmsg_seq;
	info.nlmsg_flags = NLM_F_MULTI;

	if (!cb->args[0]) {
		cb->args[0] = 1;
		FUNC3(walk, 0);
	}

	(void) FUNC2(net, walk, dump_one_state, &info);

	return skb->len;
}