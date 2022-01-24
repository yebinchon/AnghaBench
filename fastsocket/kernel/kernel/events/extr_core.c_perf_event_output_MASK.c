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
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event_header {int /*<<< orphan*/  size; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_output_handle*,struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_output_handle*,struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event_header*,struct perf_sample_data*,struct perf_event*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct perf_event *event,
				struct perf_sample_data *data,
				struct pt_regs *regs)
{
	struct perf_output_handle handle;
	struct perf_event_header header;

	/* protect the callchain buffers */
	FUNC4();

	FUNC3(&header, data, event, regs);

	if (FUNC0(&handle, event, header.size))
		goto exit;

	FUNC2(&handle, &header, data, event);

	FUNC1(&handle);

exit:
	FUNC5();
}