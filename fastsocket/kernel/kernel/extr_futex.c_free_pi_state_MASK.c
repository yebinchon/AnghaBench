#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct futex_pi_state {int /*<<< orphan*/  refcount; TYPE_1__* owner; int /*<<< orphan*/  pi_mutex; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {struct futex_pi_state* pi_state_cache; } ;
struct TYPE_3__ {int /*<<< orphan*/  pi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct futex_pi_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct futex_pi_state *pi_state)
{
	if (!FUNC0(&pi_state->refcount))
		return;

	/*
	 * If pi_state->owner is NULL, the owner is most probably dying
	 * and has cleaned up the pi_state already
	 */
	if (pi_state->owner) {
		FUNC5(&pi_state->owner->pi_lock);
		FUNC3(&pi_state->list);
		FUNC6(&pi_state->owner->pi_lock);

		FUNC4(&pi_state->pi_mutex, pi_state->owner);
	}

	if (current->pi_state_cache)
		FUNC2(pi_state);
	else {
		/*
		 * pi_state->list is already empty.
		 * clear pi_state->owner.
		 * refcount is at 0 - put it back to 1.
		 */
		pi_state->owner = NULL;
		FUNC1(&pi_state->refcount, 1);
		current->pi_state_cache = pi_state;
	}
}