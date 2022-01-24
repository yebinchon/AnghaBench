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
struct TYPE_2__ {int type; } ;
union perf_event {TYPE_1__ header; } ;
struct machine {int dummy; } ;

/* Variables and functions */
#define  PERF_RECORD_COMM 132 
#define  PERF_RECORD_EXIT 131 
#define  PERF_RECORD_FORK 130 
#define  PERF_RECORD_LOST 129 
#define  PERF_RECORD_MMAP 128 
 int FUNC0 (struct machine*,union perf_event*) ; 
 int FUNC1 (struct machine*,union perf_event*) ; 
 int FUNC2 (struct machine*,union perf_event*) ; 
 int FUNC3 (struct machine*,union perf_event*) ; 
 int FUNC4 (struct machine*,union perf_event*) ; 

int FUNC5(struct machine *machine, union perf_event *event)
{
	int ret;

	switch (event->header.type) {
	case PERF_RECORD_COMM:
		ret = FUNC0(machine, event); break;
	case PERF_RECORD_MMAP:
		ret = FUNC4(machine, event); break;
	case PERF_RECORD_FORK:
		ret = FUNC2(machine, event); break;
	case PERF_RECORD_EXIT:
		ret = FUNC1(machine, event); break;
	case PERF_RECORD_LOST:
		ret = FUNC3(machine, event); break;
	default:
		ret = -1;
		break;
	}

	return ret;
}