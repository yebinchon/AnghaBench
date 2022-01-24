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
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct rtgenmsg {int rtgen_family; } ;
struct netlink_callback {int* args; TYPE_2__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {struct neigh_parms* next; } ;
struct neigh_table {int family; TYPE_1__ parms; struct neigh_table* next; } ;
struct neigh_parms {struct neigh_parms* next; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  RTM_NEWNEIGHTBL ; 
 int /*<<< orphan*/  FUNC1 (struct neigh_parms*) ; 
 struct neigh_table* neigh_tables ; 
 int /*<<< orphan*/  neigh_tbl_lock ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct neigh_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct neigh_table*,struct neigh_parms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC8(skb->sk);
	int family, tidx, nidx = 0;
	int tbl_skip = cb->args[0];
	int neigh_skip = cb->args[1];
	struct neigh_table *tbl;

	family = ((struct rtgenmsg *) FUNC5(cb->nlh))->rtgen_family;

	FUNC6(&neigh_tbl_lock);
	for (tbl = neigh_tables, tidx = 0; tbl; tbl = tbl->next, tidx++) {
		struct neigh_parms *p;

		if (tidx < tbl_skip || (family && tbl->family != family))
			continue;

		if (FUNC2(skb, tbl, FUNC0(cb->skb).pid,
				       cb->nlh->nlmsg_seq, RTM_NEWNEIGHTBL,
				       NLM_F_MULTI) <= 0)
			break;

		for (nidx = 0, p = tbl->parms.next; p; p = p->next) {
			if (!FUNC4(FUNC1(p), net))
				continue;

			if (nidx < neigh_skip)
				goto next;

			if (FUNC3(skb, tbl, p,
						     FUNC0(cb->skb).pid,
						     cb->nlh->nlmsg_seq,
						     RTM_NEWNEIGHTBL,
						     NLM_F_MULTI) <= 0)
				goto out;
		next:
			nidx++;
		}

		neigh_skip = 0;
	}
out:
	FUNC7(&neigh_tbl_lock);
	cb->args[0] = tidx;
	cb->args[1] = nidx;

	return skb->len;
}