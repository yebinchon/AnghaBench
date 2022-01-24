#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* parent; TYPE_1__* mm; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {int core_state; } ;

/* Variables and functions */
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(void)
{
	if (!FUNC0(FUNC1(current)))
		return 0;
	/*
	 * Are we in the middle of do_coredump?
	 * If so and our tracer is also part of the coredump stopping
	 * is a deadlock situation, and pointless because our tracer
	 * is dead so don't allow us to stop.
	 * If SIGKILL was already sent before the caller unlocked
	 * ->siglock we must see ->core_state != NULL. Otherwise it
	 * is safe to enter schedule().
	 */
	if (FUNC2(current->mm->core_state) &&
	    FUNC2(current->mm == current->parent->mm))
		return 0;

	return 1;
}