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
typedef  long u64 ;
struct task_struct {int flags; } ;
struct backing_dev_info {unsigned long min_ratio; unsigned long max_ratio; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PF_LESS_THROTTLE ; 
 int bdi_min_ratio ; 
 int /*<<< orphan*/  FUNC1 (struct backing_dev_info*,long*,long*) ; 
 int /*<<< orphan*/  FUNC2 (struct backing_dev_info*,unsigned long,unsigned long*) ; 
 struct task_struct* current ; 
 unsigned long FUNC3 () ; 
 scalar_t__ dirty_background_bytes ; 
 unsigned long dirty_background_ratio ; 
 int /*<<< orphan*/  FUNC4 (long,long) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,unsigned long*) ; 
 scalar_t__ vm_dirty_bytes ; 
 int vm_dirty_ratio ; 

void
FUNC7(unsigned long *pbackground, unsigned long *pdirty,
		 unsigned long *pbdi_dirty, struct backing_dev_info *bdi)
{
	unsigned long background;
	unsigned long dirty;
	unsigned long available_memory = FUNC3();
	struct task_struct *tsk;

	if (vm_dirty_bytes)
		dirty = FUNC0(vm_dirty_bytes, PAGE_SIZE);
	else {
		int dirty_ratio;

		dirty_ratio = vm_dirty_ratio;
		if (dirty_ratio < 5)
			dirty_ratio = 5;
		dirty = (dirty_ratio * available_memory) / 100;
	}

	if (dirty_background_bytes)
		background = FUNC0(dirty_background_bytes, PAGE_SIZE);
	else
		background = (dirty_background_ratio * available_memory) / 100;

	if (background >= dirty)
		background = dirty / 2;
	tsk = current;
	if (tsk->flags & PF_LESS_THROTTLE || FUNC5(tsk)) {
		background += background / 4;
		dirty += dirty / 4;
	}
	*pbackground = background;
	*pdirty = dirty;

	if (bdi) {
		u64 bdi_dirty;
		long numerator, denominator;

		/*
		 * Calculate this BDI's share of the dirty ratio.
		 */
		FUNC1(bdi, &numerator, &denominator);

		bdi_dirty = (dirty * (100 - bdi_min_ratio)) / 100;
		bdi_dirty *= numerator;
		FUNC4(bdi_dirty, denominator);
		bdi_dirty += (dirty * bdi->min_ratio) / 100;
		if (bdi_dirty > (dirty * bdi->max_ratio) / 100)
			bdi_dirty = dirty * bdi->max_ratio / 100;

		*pbdi_dirty = bdi_dirty;
		FUNC2(bdi, dirty, pbdi_dirty);
		FUNC6(current, pbdi_dirty);
	}
}