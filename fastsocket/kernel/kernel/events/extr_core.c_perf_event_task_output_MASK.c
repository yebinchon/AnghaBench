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
struct task_struct {int dummy; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {TYPE_2__ header; void* ptid; void* tid; void* ppid; void* pid; } ;
struct perf_task_event {TYPE_1__ event_id; struct task_struct* task; } ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ; 
 void* FUNC2 (struct perf_event*,struct task_struct*) ; 
 void* FUNC3 (struct perf_event*,struct task_struct*) ; 
 int FUNC4 (struct perf_output_handle*,struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_output_handle*,TYPE_1__) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event,
				     struct perf_task_event *task_event)
{
	struct perf_output_handle handle;
	struct perf_sample_data	sample;
	struct task_struct *task = task_event->task;
	int ret, size = task_event->event_id.header.size;

	FUNC1(&task_event->event_id.header, &sample, event);

	ret = FUNC4(&handle, event,
				task_event->event_id.header.size);
	if (ret)
		goto out;

	task_event->event_id.pid = FUNC2(event, task);
	task_event->event_id.ppid = FUNC2(event, current);

	task_event->event_id.tid = FUNC3(event, task);
	task_event->event_id.ptid = FUNC3(event, current);

	FUNC6(&handle, task_event->event_id);

	FUNC0(event, &handle, &sample);

	FUNC5(&handle);
out:
	task_event->event_id.header.size = size;
}