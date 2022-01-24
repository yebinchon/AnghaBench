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
struct dst_entry {struct dst_entry* next; int /*<<< orphan*/  __refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* icmp6_dst_gc_list ; 
 int /*<<< orphan*/  icmp6_dst_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(void)
{
	struct dst_entry *dst, *next, **pprev;
	int more = 0;

	next = NULL;

	FUNC2(&icmp6_dst_lock);
	pprev = &icmp6_dst_gc_list;

	while ((dst = *pprev) != NULL) {
		if (!FUNC0(&dst->__refcnt)) {
			*pprev = dst->next;
			FUNC1(dst);
		} else {
			pprev = &dst->next;
			++more;
		}
	}

	FUNC3(&icmp6_dst_lock);

	return more;
}