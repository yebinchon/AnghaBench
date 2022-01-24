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
struct percpu_counter {int /*<<< orphan*/  list; int /*<<< orphan*/  counters; int /*<<< orphan*/  count; int /*<<< orphan*/  lock; } ;
struct lock_class_key {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct lock_class_key*) ; 
 int /*<<< orphan*/  percpu_counters ; 
 int /*<<< orphan*/  percpu_counters_lock ; 
 int /*<<< orphan*/  s32 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct percpu_counter *fbc, s64 amount,
			  struct lock_class_key *key)
{
	FUNC4(&fbc->lock);
	FUNC2(&fbc->lock, key);
	fbc->count = amount;
	fbc->counters = FUNC0(s32);
	if (!fbc->counters)
		return -ENOMEM;
#ifdef CONFIG_HOTPLUG_CPU
	spin_lock(&percpu_counters_lock);
	list_add(&fbc->list, &percpu_counters);
	spin_unlock(&percpu_counters_lock);
#endif
	return 0;
}