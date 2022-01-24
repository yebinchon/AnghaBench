#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ip6_flowlabel {unsigned long lastuse; unsigned long linger; unsigned long expires; struct ip6_flowlabel* next; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int FL_HASH_MASK ; 
 unsigned long FL_MAX_LINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_flowlabel*) ; 
 struct ip6_flowlabel** fl_ht ; 
 int /*<<< orphan*/  fl_size ; 
 int /*<<< orphan*/  ip6_fl_gc_timer ; 
 int /*<<< orphan*/  ip6_fl_lock ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(unsigned long dummy)
{
	int i;
	unsigned long now = jiffies;
	unsigned long sched = 0;

	FUNC7(&ip6_fl_lock);

	for (i=0; i<=FL_HASH_MASK; i++) {
		struct ip6_flowlabel *fl, **flp;
		flp = &fl_ht[i];
		while ((fl=*flp) != NULL) {
			if (FUNC1(&fl->users) == 0) {
				unsigned long ttd = fl->lastuse + fl->linger;
				if (FUNC4(ttd, fl->expires))
					fl->expires = ttd;
				ttd = fl->expires;
				if (FUNC5(now, ttd)) {
					*flp = fl->next;
					FUNC2(fl);
					FUNC0(&fl_size);
					continue;
				}
				if (!sched || FUNC6(ttd, sched))
					sched = ttd;
			}
			flp = &fl->next;
		}
	}
	if (!sched && FUNC1(&fl_size))
		sched = now + FL_MAX_LINGER;
	if (sched) {
		FUNC3(&ip6_fl_gc_timer, sched);
	}
	FUNC8(&ip6_fl_lock);
}