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
struct perf_tool {int ordered_samples; int /*<<< orphan*/  sample; int /*<<< orphan*/  exit; int /*<<< orphan*/  fork; int /*<<< orphan*/  comm; } ;
struct perf_session {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 double first_time ; 
 int /*<<< orphan*/  input_name ; 
 double last_time ; 
 int /*<<< orphan*/  FUNC1 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_session*,char*) ; 
 struct perf_session* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct perf_tool*) ; 
 int FUNC4 (struct perf_session*,struct perf_tool*) ; 
 int /*<<< orphan*/  FUNC5 (char*,double,char const*) ; 
 int /*<<< orphan*/  process_comm_event ; 
 int /*<<< orphan*/  process_exit_event ; 
 int /*<<< orphan*/  process_fork_event ; 
 int /*<<< orphan*/  process_sample_event ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const char *output_name)
{
	struct perf_tool perf_timechart = {
		.comm		 = process_comm_event,
		.fork		 = process_fork_event,
		.exit		 = process_exit_event,
		.sample		 = process_sample_event,
		.ordered_samples = true,
	};
	struct perf_session *session = FUNC3(input_name, O_RDONLY,
							 0, false, &perf_timechart);
	int ret = -EINVAL;

	if (session == NULL)
		return -ENOMEM;

	if (!FUNC2(session, "timechart record"))
		goto out_delete;

	ret = FUNC4(session, &perf_timechart);
	if (ret)
		goto out_delete;

	FUNC0();

	FUNC6();

	FUNC7(output_name);

	FUNC5("Written %2.1f seconds of trace to %s.\n",
		(last_time - first_time) / 1000000000.0, output_name);
out_delete:
	FUNC1(session);
	return ret;
}