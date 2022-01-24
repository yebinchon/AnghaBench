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
struct pevent {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  config; } ;
struct perf_evsel {struct event_format* tp_format; int /*<<< orphan*/ * name; TYPE_1__ attr; } ;
struct event_format {char* system; char* name; } ;
typedef  int /*<<< orphan*/  bf ;

/* Variables and functions */
 struct event_format* FUNC0 (struct pevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct perf_evsel *evsel,
						struct pevent *pevent)
{
	struct event_format *event;
	char bf[128];

	/* already prepared */
	if (evsel->tp_format)
		return 0;

	event = FUNC0(pevent, evsel->attr.config);
	if (event == NULL)
		return -1;

	if (!evsel->name) {
		FUNC1(bf, sizeof(bf), "%s:%s", event->system, event->name);
		evsel->name = FUNC2(bf);
		if (evsel->name == NULL)
			return -1;
	}

	evsel->tp_format = event;
	return 0;
}