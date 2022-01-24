#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct rtmsg {int rtm_flags; } ;
struct netlink_callback {int* args; TYPE_4__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dn_next; } ;
struct TYPE_7__ {TYPE_2__ dst; } ;
struct dn_route {TYPE_1__ u; } ;
struct TYPE_11__ {int /*<<< orphan*/  pid; } ;
struct TYPE_10__ {int /*<<< orphan*/  nlmsg_seq; } ;
struct TYPE_9__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_6__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int RTM_F_CLONED ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int dn_rt_hash_mask ; 
 TYPE_3__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct net init_net ; 
 struct dn_route* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC10(skb->sk);
	struct dn_route *rt;
	int h, s_h;
	int idx, s_idx;

	if (net != &init_net)
		return 0;

	if (FUNC2(cb->nlh, 0) < sizeof(struct rtmsg))
		return -EINVAL;
	if (!(((struct rtmsg *)FUNC1(cb->nlh))->rtm_flags&RTM_F_CLONED))
		return 0;

	s_h = cb->args[0];
	s_idx = idx = cb->args[1];
	for(h = 0; h <= dn_rt_hash_mask; h++) {
		if (h < s_h)
			continue;
		if (h > s_h)
			s_idx = 0;
		FUNC6();
		for(rt = FUNC5(dn_rt_hash_table[h].chain), idx = 0;
			rt;
			rt = FUNC5(rt->u.dst.dn_next), idx++) {
			if (idx < s_idx)
				continue;
			FUNC9(skb, FUNC4(&rt->u.dst));
			if (FUNC3(skb, FUNC0(cb->skb).pid,
					cb->nlh->nlmsg_seq, RTM_NEWROUTE,
					1, NLM_F_MULTI) <= 0) {
				FUNC8(skb);
				FUNC7();
				goto done;
			}
			FUNC8(skb);
		}
		FUNC7();
	}

done:
	cb->args[0] = h;
	cb->args[1] = idx;
	return skb->len;
}