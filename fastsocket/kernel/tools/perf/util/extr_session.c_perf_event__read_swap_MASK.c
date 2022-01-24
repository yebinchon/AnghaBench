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
struct TYPE_2__ {void* id; void* time_running; void* time_enabled; void* value; void* tid; void* pid; } ;
union perf_event {TYPE_1__ read; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (union perf_event*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(union perf_event *event, bool sample_id_all)
{
	event->read.pid		 = FUNC0(event->read.pid);
	event->read.tid		 = FUNC0(event->read.tid);
	event->read.value	 = FUNC1(event->read.value);
	event->read.time_enabled = FUNC1(event->read.time_enabled);
	event->read.time_running = FUNC1(event->read.time_running);
	event->read.id		 = FUNC1(event->read.id);

	if (sample_id_all)
		FUNC2(event, &event->read + 1);
}