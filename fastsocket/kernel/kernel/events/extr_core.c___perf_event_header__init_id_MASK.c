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
typedef  int u64 ;
struct TYPE_6__ {scalar_t__ reserved; int /*<<< orphan*/  cpu; } ;
struct TYPE_5__ {int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct perf_sample_data {int type; TYPE_3__ cpu_entry; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  id; int /*<<< orphan*/  time; TYPE_2__ tid_entry; } ;
struct perf_event_header {int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int sample_type; } ;
struct perf_event {int /*<<< orphan*/  id; scalar_t__ id_header_size; TYPE_1__ attr; } ;

/* Variables and functions */
 int PERF_SAMPLE_CPU ; 
 int PERF_SAMPLE_ID ; 
 int PERF_SAMPLE_STREAM_ID ; 
 int PERF_SAMPLE_TID ; 
 int PERF_SAMPLE_TIME ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct perf_event_header *header,
					 struct perf_sample_data *data,
					 struct perf_event *event)
{
	u64 sample_type = event->attr.sample_type;

	data->type = sample_type;
	header->size += event->id_header_size;

	if (sample_type & PERF_SAMPLE_TID) {
		/* namespace issues */
		data->tid_entry.pid = FUNC1(event, current);
		data->tid_entry.tid = FUNC2(event, current);
	}

	if (sample_type & PERF_SAMPLE_TIME)
		data->time = FUNC0();

	if (sample_type & PERF_SAMPLE_ID)
		data->id = FUNC3(event);

	if (sample_type & PERF_SAMPLE_STREAM_ID)
		data->stream_id = event->id;

	if (sample_type & PERF_SAMPLE_CPU) {
		data->cpu_entry.cpu	 = FUNC4();
		data->cpu_entry.reserved = 0;
	}
}