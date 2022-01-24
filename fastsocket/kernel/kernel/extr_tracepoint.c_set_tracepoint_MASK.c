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
struct tracepoint_entry {int /*<<< orphan*/  funcs; int /*<<< orphan*/  name; } ;
struct tracepoint {int state; int /*<<< orphan*/  funcs; int /*<<< orphan*/  (* unregfunc ) () ;int /*<<< orphan*/  (* regfunc ) () ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct tracepoint_entry **entry,
	struct tracepoint *elem, int active)
{
	FUNC0(FUNC2((*entry)->name, elem->name) != 0);

	if (elem->regfunc && !elem->state && active)
		elem->regfunc();
	else if (elem->unregfunc && elem->state && !active)
		elem->unregfunc();

	/*
	 * rcu_assign_pointer has a smp_wmb() which makes sure that the new
	 * probe callbacks array is consistent before setting a pointer to it.
	 * This array is referenced by __DO_TRACE from
	 * include/linux/tracepoints.h. A matching smp_read_barrier_depends()
	 * is used.
	 */
	FUNC1(elem->funcs, (*entry)->funcs);
	elem->state = active;
}