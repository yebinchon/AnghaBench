#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct trace_seq {int dummy; } ;
struct pevent_record {unsigned long ts; scalar_t__ size; int /*<<< orphan*/  cpu; void* data; } ;
struct pevent {int flags; scalar_t__ latency_format; } ;
struct event_format {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned long NSECS_PER_SEC ; 
 unsigned long NSECS_PER_USEC ; 
 int PEVENT_NSEC_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (struct pevent*,int) ; 
 int FUNC2 (struct pevent*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct pevent*,struct trace_seq*,struct pevent_record*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,struct event_format*,struct pevent_record*) ; 
 struct event_format* FUNC5 (struct pevent*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pevent*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct trace_seq*,char*,...) ; 

void FUNC9(struct pevent *pevent, struct trace_seq *s,
			struct pevent_record *record)
{
	static char *spaces = "                    "; /* 20 spaces */
	struct event_format *event;
	unsigned long secs;
	unsigned long usecs;
	unsigned long nsecs;
	const char *comm;
	void *data = record->data;
	int type;
	int pid;
	int len;
	int p;

	secs = record->ts / NSECS_PER_SEC;
	nsecs = record->ts - secs * NSECS_PER_SEC;

	if (record->size < 0) {
		FUNC0("ug! negative record size %d", record->size);
		return;
	}

	type = FUNC7(pevent, data);

	event = FUNC5(pevent, type);
	if (!event) {
		FUNC0("ug! no event found for type %d", type);
		return;
	}

	pid = FUNC2(pevent, data);
	comm = FUNC1(pevent, pid);

	if (pevent->latency_format) {
		FUNC8(s, "%8.8s-%-5d %3d",
		       comm, pid, record->cpu);
		FUNC3(pevent, s, record);
	} else
		FUNC8(s, "%16s-%-5d [%03d]", comm, pid, record->cpu);

	if (pevent->flags & PEVENT_NSEC_OUTPUT) {
		usecs = nsecs;
		p = 9;
	} else {
		usecs = (nsecs + 500) / NSECS_PER_USEC;
		p = 6;
	}

	FUNC8(s, " %5lu.%0*lu: %s: ", secs, p, usecs, event->name);

	/* Space out the event names evenly. */
	len = FUNC6(event->name);
	if (len < 20)
		FUNC8(s, "%.*s", 20 - len, spaces);

	FUNC4(s, event, record);
}