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
struct pevent_record {int cpu; int size; void* data; } ;
struct event_format {int dummy; } ;
typedef  int /*<<< orphan*/  record ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pevent_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,struct event_format*,struct pevent_record*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*) ; 

void FUNC4(struct event_format *event,
			 int cpu, void *data, int size)
{
	struct pevent_record record;
	struct trace_seq s;

	FUNC0(&record, 0, sizeof(record));
	record.cpu = cpu;
	record.size = size;
	record.data = data;

	FUNC3(&s);
	FUNC1(&s, event, &record);
	FUNC2(&s);
}