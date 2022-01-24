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
struct TYPE_2__ {int /*<<< orphan*/  target; } ;
struct trace {int /*<<< orphan*/  host; TYPE_1__ opts; } ;
struct perf_evlist {int /*<<< orphan*/  threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_KERNEL_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  trace__tool_process ; 

__attribute__((used)) static int FUNC7(struct trace *trace, struct perf_evlist *evlist)
{
	int err = FUNC6();

	if (err)
		return err;

	FUNC1(&trace->host, "", HOST_KERNEL_ID);
	FUNC0(&trace->host);

	if (FUNC4(&trace->opts.target)) {
		err = FUNC2(NULL, evlist->threads,
							trace__tool_process,
							&trace->host);
	} else {
		err = FUNC3(NULL, trace__tool_process,
						     &trace->host);
	}

	if (err)
		FUNC5();

	return err;
}