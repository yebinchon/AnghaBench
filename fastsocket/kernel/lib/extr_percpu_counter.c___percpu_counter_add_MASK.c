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
struct percpu_counter {int /*<<< orphan*/  lock; scalar_t__ count; int /*<<< orphan*/  counters; } ;
typedef  scalar_t__ s64 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct percpu_counter *fbc, s64 amount, s32 batch)
{
	s64 count;
	s32 *pcount;
	int cpu = FUNC0();

	pcount = FUNC1(fbc->counters, cpu);
	count = *pcount + amount;
	if (count >= batch || count <= -batch) {
		FUNC3(&fbc->lock);
		fbc->count += count;
		*pcount = 0;
		FUNC4(&fbc->lock);
	} else {
		*pcount = count;
	}
	FUNC2();
}