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
struct held_lock {scalar_t__ irq_context; scalar_t__ references; int /*<<< orphan*/  acquire_ip; int /*<<< orphan*/  nest_lock; int /*<<< orphan*/  hardirqs_off; int /*<<< orphan*/  check; int /*<<< orphan*/  read; int /*<<< orphan*/  trylock; struct lockdep_map* instance; int /*<<< orphan*/  prev_chain_key; } ;
struct TYPE_2__ {int /*<<< orphan*/  subclass; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lockdep_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC2 (struct held_lock*) ; 
 int /*<<< orphan*/  FUNC3 (struct held_lock*) ; 
 scalar_t__ FUNC4 (struct held_lock*,struct lockdep_map*) ; 
 int FUNC5 (struct task_struct*,struct lockdep_map*,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct task_struct *curr,
			struct lockdep_map *lock, unsigned long ip)
{
	struct held_lock *hlock, *prev_hlock;
	unsigned int depth;
	int i;

	/*
	 * Check whether the lock exists in the current stack
	 * of held locks:
	 */
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
	if (hlock->instance == lock)
		FUNC3(hlock);

	if (hlock->references) {
		hlock->references--;
		if (hlock->references) {
			/*
			 * We had, and after removing one, still have
			 * references, the current lock stack is still
			 * valid. We're done!
			 */
			return 1;
		}
	}

	/*
	 * We have the right lock to unlock, 'hlock' points to it.
	 * Now we remove it from the stack, and add back the other
	 * entries (if any), recalculating the hash along the way:
	 */

	curr->lockdep_depth = i;
	curr->curr_chain_key = hlock->prev_chain_key;

	for (i++; i < depth; i++) {
		hlock = curr->held_locks + i;
		if (!FUNC1(hlock->instance,
			FUNC2(hlock)->subclass, hlock->trylock,
				hlock->read, hlock->check, hlock->hardirqs_off,
				hlock->nest_lock, hlock->acquire_ip,
				hlock->references))
			return 0;
	}

	if (FUNC0(curr->lockdep_depth != depth - 1))
		return 0;
	return 1;
}