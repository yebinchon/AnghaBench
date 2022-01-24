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
struct task_struct {unsigned int lockdep_depth; struct held_lock* held_locks; int /*<<< orphan*/  curr_chain_key; } ;
struct lockdep_map {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct lock_class {int dummy; } ;
struct held_lock {scalar_t__ irq_context; int class_idx; int /*<<< orphan*/  references; int /*<<< orphan*/  acquire_ip; int /*<<< orphan*/  nest_lock; int /*<<< orphan*/  hardirqs_off; int /*<<< orphan*/  check; int /*<<< orphan*/  read; int /*<<< orphan*/  trylock; int /*<<< orphan*/  instance; int /*<<< orphan*/  prev_chain_key; } ;
struct TYPE_2__ {int /*<<< orphan*/  subclass; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 TYPE_1__* FUNC2 (struct held_lock*) ; 
 struct lock_class* lock_classes ; 
 int /*<<< orphan*/  FUNC3 (struct lockdep_map*,char const*,struct lock_class_key*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct held_lock*,struct lockdep_map*) ; 
 int FUNC5 (struct task_struct*,struct lockdep_map*,unsigned long) ; 
 struct lock_class* FUNC6 (struct lockdep_map*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct lockdep_map *lock, const char *name,
		 struct lock_class_key *key, unsigned int subclass,
		 unsigned long ip)
{
	struct task_struct *curr = current;
	struct held_lock *hlock, *prev_hlock;
	struct lock_class *class;
	unsigned int depth;
	int i;

	depth = curr->lockdep_depth;
	if (FUNC0(!depth))
		return 0;

	prev_hlock = NULL;
	for (i = depth-1; i >= 0; i--) {
		hlock = curr->held_locks + i;
		/*
		 * We must not cross into another context:
		 */
		if (prev_hlock && prev_hlock->irq_context != hlock->irq_context)
			break;
		if (FUNC4(hlock, lock))
			goto found_it;
		prev_hlock = hlock;
	}
	return FUNC5(curr, lock, ip);

found_it:
	FUNC3(lock, name, key, 0);
	class = FUNC6(lock, subclass, 0);
	hlock->class_idx = class - lock_classes + 1;

	curr->lockdep_depth = i;
	curr->curr_chain_key = hlock->prev_chain_key;

	for (; i < depth; i++) {
		hlock = curr->held_locks + i;
		if (!FUNC1(hlock->instance,
			FUNC2(hlock)->subclass, hlock->trylock,
				hlock->read, hlock->check, hlock->hardirqs_off,
				hlock->nest_lock, hlock->acquire_ip,
				hlock->references))
			return 0;
	}

	if (FUNC0(curr->lockdep_depth != depth))
		return 0;
	return 1;
}