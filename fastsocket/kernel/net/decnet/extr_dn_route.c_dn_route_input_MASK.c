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
struct sk_buff {scalar_t__ mark; } ;
struct dst_entry {int dummy; } ;
struct dn_skb_cb {scalar_t__ src; scalar_t__ dst; scalar_t__ iif; } ;
struct TYPE_7__ {int /*<<< orphan*/  dn_next; } ;
struct TYPE_6__ {TYPE_3__ dst; } ;
struct TYPE_5__ {scalar_t__ fld_src; scalar_t__ fld_dst; scalar_t__ oif; scalar_t__ mark; scalar_t__ iif; } ;
struct dn_route {TYPE_2__ u; TYPE_1__ fl; } ;
struct TYPE_8__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (struct sk_buff*) ; 
 TYPE_4__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct dn_route* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct dst_entry*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb)
{
	struct dn_route *rt;
	struct dn_skb_cb *cb = FUNC0(skb);
	unsigned hash = FUNC1(cb->src, cb->dst);

	if (FUNC7(skb))
		return 0;

	FUNC5();
	for(rt = FUNC4(dn_rt_hash_table[hash].chain); rt != NULL;
	    rt = FUNC4(rt->u.dst.dn_next)) {
		if ((rt->fl.fld_src == cb->src) &&
		    (rt->fl.fld_dst == cb->dst) &&
		    (rt->fl.oif == 0) &&
		    (rt->fl.mark == skb->mark) &&
		    (rt->fl.iif == cb->iif)) {
			FUNC3(&rt->u.dst, jiffies);
			FUNC6();
			FUNC8(skb, (struct dst_entry *)rt);
			return 0;
		}
	}
	FUNC6();

	return FUNC2(skb);
}