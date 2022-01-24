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
struct TYPE_4__ {unsigned long lastuse; struct dn_route* dn_next; int /*<<< orphan*/  __refcnt; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct dn_route {TYPE_2__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; struct dn_route* chain; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int decnet_dst_gc_interval ; 
 int /*<<< orphan*/  dn_route_timer ; 
 int dn_rt_hash_mask ; 
 TYPE_3__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC1 (struct dn_route*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned long dummy)
{
	int i;
	struct dn_route *rt, **rtp;
	unsigned long now = jiffies;
	unsigned long expire = 120 * HZ;

	for(i = 0; i <= dn_rt_hash_mask; i++) {
		rtp = &dn_rt_hash_table[i].chain;

		FUNC3(&dn_rt_hash_table[i].lock);
		while((rt=*rtp) != NULL) {
			if (FUNC0(&rt->u.dst.__refcnt) ||
					(now - rt->u.dst.lastuse) < expire) {
				rtp = &rt->u.dst.dn_next;
				continue;
			}
			*rtp = rt->u.dst.dn_next;
			rt->u.dst.dn_next = NULL;
			FUNC1(rt);
		}
		FUNC4(&dn_rt_hash_table[i].lock);

		if ((jiffies - now) > 0)
			break;
	}

	FUNC2(&dn_route_timer, now + decnet_dst_gc_interval * HZ);
}