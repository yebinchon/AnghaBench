#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dst_entry {struct dst_entry* next; } ;
struct TYPE_2__ {scalar_t__ timer_inc; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer_expires; struct dst_entry* list; } ;

/* Variables and functions */
 scalar_t__ DST_GC_INC ; 
 int /*<<< orphan*/  DST_GC_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ dst_garbage ; 
 int /*<<< orphan*/  dst_gc_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dst_entry * dst)
{
	FUNC3(&dst_garbage.lock);
	FUNC0(dst);
	dst->next = dst_garbage.list;
	dst_garbage.list = dst;
	if (dst_garbage.timer_inc > DST_GC_INC) {
		dst_garbage.timer_inc = DST_GC_INC;
		dst_garbage.timer_expires = DST_GC_MIN;
		FUNC1(&dst_gc_work);
		FUNC2(&dst_gc_work, dst_garbage.timer_expires);
	}
	FUNC4(&dst_garbage.lock);
}