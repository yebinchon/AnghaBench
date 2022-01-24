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
struct TYPE_4__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  pid; int /*<<< orphan*/  pgoff; int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;
struct TYPE_3__ {scalar_t__ misc; } ;
union perf_event {TYPE_2__ mmap; TYPE_1__ header; } ;
typedef  scalar_t__ u8 ;
struct thread {int dummy; } ;
struct map {int dummy; } ;
struct machine {int /*<<< orphan*/  user_dsos; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP__FUNCTION ; 
 scalar_t__ PERF_RECORD_MISC_CPUMODE_MASK ; 
 scalar_t__ PERF_RECORD_MISC_GUEST_KERNEL ; 
 scalar_t__ PERF_RECORD_MISC_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ dump_trace ; 
 struct thread* FUNC1 (struct machine*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct machine*,union perf_event*) ; 
 struct map* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,struct map*) ; 

int FUNC6(struct machine *machine, union perf_event *event)
{
	u8 cpumode = event->header.misc & PERF_RECORD_MISC_CPUMODE_MASK;
	struct thread *thread;
	struct map *map;
	int ret = 0;

	if (dump_trace)
		FUNC4(event, stdout);

	if (cpumode == PERF_RECORD_MISC_GUEST_KERNEL ||
	    cpumode == PERF_RECORD_MISC_KERNEL) {
		ret = FUNC2(machine, event);
		if (ret < 0)
			goto out_problem;
		return 0;
	}

	thread = FUNC1(machine, event->mmap.pid);
	if (thread == NULL)
		goto out_problem;
	map = FUNC3(&machine->user_dsos, event->mmap.start,
			event->mmap.len, event->mmap.pgoff,
			event->mmap.pid, event->mmap.filename,
			MAP__FUNCTION);
	if (map == NULL)
		goto out_problem;

	FUNC5(thread, map);
	return 0;

out_problem:
	FUNC0("problem processing PERF_RECORD_MMAP, skipping event.\n");
	return 0;
}