#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {union perf_event* name; int /*<<< orphan*/  event_id; } ;
struct TYPE_6__ {TYPE_2__ header; TYPE_1__ event_type; } ;
union perf_event {TYPE_3__ event_type; } ;
typedef  int /*<<< orphan*/  u64 ;
struct perf_tool {int dummy; } ;
struct machine {int dummy; } ;
typedef  int (* perf_event__handler_t ) (struct perf_tool*,union perf_event*,int /*<<< orphan*/ *,struct machine*) ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int MAX_EVENT_NAME ; 
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  PERF_RECORD_HEADER_EVENT_TYPE ; 
 int /*<<< orphan*/  FUNC1 (union perf_event*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (union perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (union perf_event*,char*,int) ; 

int FUNC4(struct perf_tool *tool,
				      u64 event_id, char *name,
				      perf_event__handler_t process,
				      struct machine *machine)
{
	union perf_event ev;
	size_t size = 0;
	int err = 0;

	FUNC1(&ev, 0, sizeof(ev));

	ev.event_type.event_type.event_id = event_id;
	FUNC1(ev.event_type.event_type.name, 0, MAX_EVENT_NAME);
	FUNC3(ev.event_type.event_type.name, name, MAX_EVENT_NAME - 1);

	ev.event_type.header.type = PERF_RECORD_HEADER_EVENT_TYPE;
	size = FUNC2(ev.event_type.event_type.name);
	size = FUNC0(size, sizeof(u64));
	ev.event_type.header.size = sizeof(ev.event_type) -
		(sizeof(ev.event_type.event_type.name) - size);

	err = process(tool, &ev, NULL, machine);

	return err;
}