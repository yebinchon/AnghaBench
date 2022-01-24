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
typedef  void* u64 ;
struct trace_entry {int dummy; } ;
struct sched_switch {int prev_state; int /*<<< orphan*/  next_pid; int /*<<< orphan*/  prev_pid; } ;
struct per_pid {TYPE_1__* current; } ;
struct TYPE_2__ {scalar_t__ state; void* state_since; } ;

/* Variables and functions */
 scalar_t__ TYPE_BLOCKED ; 
 scalar_t__ TYPE_NONE ; 
 scalar_t__ TYPE_RUNNING ; 
 scalar_t__ TYPE_WAITING ; 
 struct per_pid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,void*,void*) ; 

__attribute__((used)) static void FUNC2(int cpu, u64 timestamp, struct trace_entry *te)
{
	struct per_pid *p = NULL, *prev_p;
	struct sched_switch *sw = (void *)te;


	prev_p = FUNC0(sw->prev_pid);

	p = FUNC0(sw->next_pid);

	if (prev_p->current && prev_p->current->state != TYPE_NONE)
		FUNC1(sw->prev_pid, TYPE_RUNNING, cpu, prev_p->current->state_since, timestamp);
	if (p && p->current) {
		if (p->current->state != TYPE_NONE)
			FUNC1(sw->next_pid, p->current->state, cpu, p->current->state_since, timestamp);

		p->current->state_since = timestamp;
		p->current->state = TYPE_RUNNING;
	}

	if (prev_p->current) {
		prev_p->current->state = TYPE_NONE;
		prev_p->current->state_since = timestamp;
		if (sw->prev_state & 2)
			prev_p->current->state = TYPE_BLOCKED;
		if (sw->prev_state == 0)
			prev_p->current->state = TYPE_WAITING;
	}
}