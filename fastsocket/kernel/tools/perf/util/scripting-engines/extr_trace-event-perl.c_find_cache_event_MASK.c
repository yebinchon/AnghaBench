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
struct TYPE_4__ {int config; } ;
struct perf_evsel {struct event_format* tp_format; TYPE_2__ attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  args; } ;
struct event_format {char* system; char* name; TYPE_1__ print_fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_format*,char*,int /*<<< orphan*/ ) ; 
 struct event_format** events ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 

__attribute__((used)) static inline struct event_format *FUNC2(struct perf_evsel *evsel)
{
	static char ev_name[256];
	struct event_format *event;
	int type = evsel->attr.config;

	if (events[type])
		return events[type];

	events[type] = event = evsel->tp_format;
	if (!event)
		return NULL;

	FUNC1(ev_name, "%s::%s", event->system, event->name);

	FUNC0(event, ev_name, event->print_fmt.args);

	return event;
}