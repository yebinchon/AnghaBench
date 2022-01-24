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
struct TYPE_5__ {struct dn_route* dn_next; } ;
struct TYPE_4__ {TYPE_2__ dst; } ;
struct dn_route {TYPE_1__ u; int /*<<< orphan*/  fl; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; struct dn_route* chain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC1 (struct dn_route*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct dn_route*,struct dn_route*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dn_route *rt, unsigned hash, struct dn_route **rp)
{
	struct dn_route *rth, **rthp;
	unsigned long now = jiffies;

	rthp = &dn_rt_hash_table[hash].chain;

	FUNC4(&dn_rt_hash_table[hash].lock);
	while((rth = *rthp) != NULL) {
		if (FUNC0(&rth->fl, &rt->fl)) {
			/* Put it first */
			*rthp = rth->u.dst.dn_next;
			FUNC3(rth->u.dst.dn_next,
					   dn_rt_hash_table[hash].chain);
			FUNC3(dn_rt_hash_table[hash].chain, rth);

			FUNC2(&rth->u.dst, now);
			FUNC5(&dn_rt_hash_table[hash].lock);

			FUNC1(rt);
			*rp = rth;
			return 0;
		}
		rthp = &rth->u.dst.dn_next;
	}

	FUNC3(rt->u.dst.dn_next, dn_rt_hash_table[hash].chain);
	FUNC3(dn_rt_hash_table[hash].chain, rt);

	FUNC2(&rt->u.dst, now);
	FUNC5(&dn_rt_hash_table[hash].lock);
	*rp = rt;
	return 0;
}