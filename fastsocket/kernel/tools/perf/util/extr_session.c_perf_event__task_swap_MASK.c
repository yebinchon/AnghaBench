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
struct TYPE_2__ {int /*<<< orphan*/  time; void* ptid; void* ppid; void* tid; void* pid; } ;
union perf_event {TYPE_1__ fork; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union perf_event*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(union perf_event *event, bool sample_id_all)
{
	event->fork.pid	 = FUNC0(event->fork.pid);
	event->fork.tid	 = FUNC0(event->fork.tid);
	event->fork.ppid = FUNC0(event->fork.ppid);
	event->fork.ptid = FUNC0(event->fork.ptid);
	event->fork.time = FUNC1(event->fork.time);

	if (sample_id_all)
		FUNC2(event, &event->fork + 1);
}