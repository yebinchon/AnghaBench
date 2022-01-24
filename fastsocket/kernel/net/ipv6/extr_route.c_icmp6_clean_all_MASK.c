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
typedef  struct rt6_info rt6_info ;
struct dst_entry {struct dst_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 struct dst_entry* icmp6_dst_gc_list ; 
 int /*<<< orphan*/  icmp6_dst_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(int (*func)(struct rt6_info *rt, void *arg),
			    void *arg)
{
	struct dst_entry *dst, **pprev;

	FUNC1(&icmp6_dst_lock);
	pprev = &icmp6_dst_gc_list;
	while ((dst = *pprev) != NULL) {
		struct rt6_info *rt = (struct rt6_info *) dst;
		if (func(rt, arg)) {
			*pprev = dst->next;
			FUNC0(dst);
		} else {
			pprev = &dst->next;
		}
	}
	FUNC2(&icmp6_dst_lock);
}