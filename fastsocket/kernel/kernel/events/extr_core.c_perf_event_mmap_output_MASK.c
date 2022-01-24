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
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {TYPE_2__ header; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct perf_mmap_event {TYPE_1__ event_id; int /*<<< orphan*/  file_size; int /*<<< orphan*/  file_name; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_output_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct perf_output_handle*,struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_output_handle*,TYPE_1__) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event,
				     struct perf_mmap_event *mmap_event)
{
	struct perf_output_handle handle;
	struct perf_sample_data sample;
	int size = mmap_event->event_id.header.size;
	int ret;

	FUNC2(&mmap_event->event_id.header, &sample, event);
	ret = FUNC5(&handle, event,
				mmap_event->event_id.header.size);
	if (ret)
		goto out;

	mmap_event->event_id.pid = FUNC3(event, current);
	mmap_event->event_id.tid = FUNC4(event, current);

	FUNC7(&handle, mmap_event->event_id);
	FUNC0(&handle, mmap_event->file_name,
				   mmap_event->file_size);

	FUNC1(event, &handle, &sample);

	FUNC6(&handle);
out:
	mmap_event->event_id.header.size = size;
}