#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  rt_next; } ;
struct TYPE_6__ {TYPE_4__ dst; } ;
struct rtable {TYPE_1__ u; } ;
struct netlink_callback {int* args; TYPE_2__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  pid; } ;
struct TYPE_8__ {int /*<<< orphan*/  chain; } ;
struct TYPE_7__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 TYPE_5__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net*) ; 
 struct rtable* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int rt_hash_mask ; 
 TYPE_3__* rt_hash_table ; 
 scalar_t__ FUNC8 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct sk_buff *skb,  struct netlink_callback *cb)
{
	struct rtable *rt;
	int h, s_h;
	int idx, s_idx;
	struct net *net;

	net = FUNC11(skb->sk);

	s_h = cb->args[0];
	if (s_h < 0)
		s_h = 0;
	s_idx = idx = cb->args[1];
	for (h = s_h; h <= rt_hash_mask; h++, s_idx = 0) {
		if (!rt_hash_table[h].chain)
			continue;
		FUNC5();
		for (rt = FUNC4(rt_hash_table[h].chain), idx = 0; rt;
		     rt = FUNC4(rt->u.dst.rt_next), idx++) {
			if (!FUNC3(FUNC1(rt->u.dst.dev), net) || idx < s_idx)
				continue;
			if (FUNC8(rt))
				continue;
			FUNC10(skb, FUNC2(&rt->u.dst));
			if (FUNC7(net, skb, FUNC0(cb->skb).pid,
					 cb->nlh->nlmsg_seq, RTM_NEWROUTE,
					 1, NLM_F_MULTI) <= 0) {
				FUNC9(skb);
				FUNC6();
				goto done;
			}
			FUNC9(skb);
		}
		FUNC6();
	}

done:
	cb->args[0] = h;
	cb->args[1] = idx;
	return skb->len;
}