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
struct TYPE_2__ {int /*<<< orphan*/  tid; } ;
union perf_event {TYPE_1__ fork; } ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;

/* Variables and functions */
 scalar_t__ dump_trace ; 
 struct thread* FUNC0 (struct machine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct machine*,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (union perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC3(struct machine *machine, union perf_event *event)
{
	struct thread *thread = FUNC0(machine, event->fork.tid);

	if (dump_trace)
		FUNC2(event, stdout);

	if (thread != NULL)
		FUNC1(machine, thread);

	return 0;
}