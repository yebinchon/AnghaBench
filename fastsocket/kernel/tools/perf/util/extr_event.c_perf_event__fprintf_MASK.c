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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  PERF_RECORD_COMM 131 
#define  PERF_RECORD_EXIT 130 
#define  PERF_RECORD_FORK 129 
#define  PERF_RECORD_MMAP 128 
 size_t FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 size_t FUNC1 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (union perf_event*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (union perf_event*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 

size_t FUNC5(union perf_event *event, FILE *fp)
{
	size_t ret = FUNC0(fp, "PERF_RECORD_%s",
			     FUNC4(event->header.type));

	switch (event->header.type) {
	case PERF_RECORD_COMM:
		ret += FUNC1(event, fp);
		break;
	case PERF_RECORD_FORK:
	case PERF_RECORD_EXIT:
		ret += FUNC3(event, fp);
		break;
	case PERF_RECORD_MMAP:
		ret += FUNC2(event, fp);
		break;
	default:
		ret += FUNC0(fp, "\n");
	}

	return ret;
}