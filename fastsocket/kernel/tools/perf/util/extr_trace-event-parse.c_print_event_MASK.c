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
struct pevent_record {unsigned long long ts; int cpu; int size; void* data; } ;
struct pevent {int /*<<< orphan*/  latency_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  latency_format ; 
 int FUNC0 (struct pevent*,struct pevent_record*) ; 
 int /*<<< orphan*/  FUNC1 (struct pevent*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pevent*,struct trace_seq*,struct pevent_record*) ; 
 int /*<<< orphan*/  FUNC3 (struct pevent*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_seq*) ; 

void FUNC7(struct pevent *pevent, int cpu, void *data, int size,
		 unsigned long long nsecs, char *comm)
{
	struct pevent_record record;
	struct trace_seq s;
	int pid;

	pevent->latency_format = latency_format;

	record.ts = nsecs;
	record.cpu = cpu;
	record.size = size;
	record.data = data;
	pid = FUNC0(pevent, &record);

	if (!FUNC1(pevent, pid))
		FUNC3(pevent, comm, pid);

	FUNC6(&s);
	FUNC2(pevent, &s, &record);
	FUNC5(&s);
	FUNC4("\n");
}