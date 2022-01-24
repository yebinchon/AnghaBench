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
struct flowi {scalar_t__ fld_src; scalar_t__ fld_dst; scalar_t__ mark; scalar_t__ oif; } ;
struct dst_entry {int /*<<< orphan*/  dn_next; } ;
struct TYPE_5__ {struct dst_entry dst; } ;
struct TYPE_4__ {scalar_t__ fld_dst; scalar_t__ fld_src; scalar_t__ mark; scalar_t__ iif; scalar_t__ oif; } ;
struct dn_route {TYPE_2__ u; TYPE_1__ fl; } ;
struct TYPE_6__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int MSG_TRYHARD ; 
 unsigned int FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (struct dst_entry**,struct flowi const*,int) ; 
 TYPE_3__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct dn_route* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct dst_entry **pprt, const struct flowi *flp, int flags)
{
	unsigned hash = FUNC0(flp->fld_src, flp->fld_dst);
	struct dn_route *rt = NULL;

	if (!(flags & MSG_TRYHARD)) {
		FUNC4();
		for(rt = FUNC3(dn_rt_hash_table[hash].chain); rt;
			rt = FUNC3(rt->u.dst.dn_next)) {
			if ((flp->fld_dst == rt->fl.fld_dst) &&
			    (flp->fld_src == rt->fl.fld_src) &&
			    (flp->mark == rt->fl.mark) &&
			    (rt->fl.iif == 0) &&
			    (rt->fl.oif == flp->oif)) {
				FUNC2(&rt->u.dst, jiffies);
				FUNC5();
				*pprt = &rt->u.dst;
				return 0;
			}
		}
		FUNC5();
	}

	return FUNC1(pprt, flp, flags);
}