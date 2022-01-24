#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  rt_next; } ;
struct TYPE_6__ {TYPE_4__ dst; } ;
struct TYPE_5__ {scalar_t__ fl4_dst; scalar_t__ fl4_src; scalar_t__ iif; scalar_t__ oif; scalar_t__ mark; int fl4_tos; } ;
struct rtable {TYPE_2__ u; TYPE_1__ fl; } ;
struct net {int dummy; } ;
struct flowi {scalar_t__ fl4_dst; scalar_t__ fl4_src; scalar_t__ oif; scalar_t__ mark; int fl4_tos; } ;
struct TYPE_7__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int IPTOS_RT_MASK ; 
 int RTO_ONLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net*,struct rtable**,struct flowi const*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  out_hit ; 
 int /*<<< orphan*/  out_hlist_search ; 
 struct rtable* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*) ; 
 unsigned int FUNC10 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* rt_hash_table ; 
 int /*<<< orphan*/  FUNC11 (struct rtable*) ; 

int FUNC12(struct net *net, struct rtable **rp,
			  const struct flowi *flp)
{
	unsigned hash;
	struct rtable *rth;

	if (!FUNC8(net))
		goto slow_output;

	hash = FUNC10(flp->fl4_dst, flp->fl4_src, flp->oif, FUNC9(net));

	FUNC6();
	for (rth = FUNC5(rt_hash_table[hash].chain); rth;
		rth = FUNC5(rth->u.dst.rt_next)) {
		if (rth->fl.fl4_dst == flp->fl4_dst &&
		    rth->fl.fl4_src == flp->fl4_src &&
		    rth->fl.iif == 0 &&
		    rth->fl.oif == flp->oif &&
		    rth->fl.mark == flp->mark &&
		    !((rth->fl.fl4_tos ^ flp->fl4_tos) &
			    (IPTOS_RT_MASK | RTO_ONLINK)) &&
		    FUNC4(FUNC1(rth->u.dst.dev), net) &&
		    !FUNC11(rth)) {
			FUNC2(&rth->u.dst, jiffies);
			FUNC0(out_hit);
			FUNC7();
			*rp = rth;
			return 0;
		}
		FUNC0(out_hlist_search);
	}
	FUNC7();

slow_output:
	return FUNC3(net, rp, flp);
}