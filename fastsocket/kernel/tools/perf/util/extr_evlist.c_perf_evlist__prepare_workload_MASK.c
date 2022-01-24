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
struct perf_record_opts {int /*<<< orphan*/  target; scalar_t__ pipe_output; } ;
struct TYPE_4__ {scalar_t__ pid; int cork_fd; } ;
struct perf_evlist {TYPE_2__ workload; TYPE_1__* threads; } ;
struct TYPE_3__ {scalar_t__* map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int*) ; 
 int FUNC11 (int,char*,int) ; 

int FUNC12(struct perf_evlist *evlist,
				  struct perf_record_opts *opts,
				  const char *argv[])
{
	int child_ready_pipe[2], go_pipe[2];
	char bf;

	if (FUNC10(child_ready_pipe) < 0) {
		FUNC9("failed to create 'ready' pipe");
		return -1;
	}

	if (FUNC10(go_pipe) < 0) {
		FUNC9("failed to create 'go' pipe");
		goto out_close_ready_pipe;
	}

	evlist->workload.pid = FUNC5();
	if (evlist->workload.pid < 0) {
		FUNC9("failed to fork");
		goto out_close_pipes;
	}

	if (!evlist->workload.pid) {
		if (opts->pipe_output)
			FUNC1(2, 1);

		FUNC0(child_ready_pipe[0]);
		FUNC0(go_pipe[1]);
		FUNC4(go_pipe[0], F_SETFD, FD_CLOEXEC);

		/*
		 * Do a dummy execvp to get the PLT entry resolved,
		 * so we avoid the resolver overhead on the real
		 * execvp call.
		 */
		FUNC2("", (char **)argv);

		/*
		 * Tell the parent we're ready to go
		 */
		FUNC0(child_ready_pipe[1]);

		/*
		 * Wait until the parent tells us to go.
		 */
		if (FUNC11(go_pipe[0], &bf, 1) == -1)
			FUNC9("unable to read pipe");

		FUNC2(argv[0], (char **)argv);

		FUNC9(argv[0]);
		FUNC7(FUNC6(), SIGUSR1);
		FUNC3(-1);
	}

	if (FUNC8(&opts->target))
		evlist->threads->map[0] = evlist->workload.pid;

	FUNC0(child_ready_pipe[1]);
	FUNC0(go_pipe[0]);
	/*
	 * wait for child to settle
	 */
	if (FUNC11(child_ready_pipe[0], &bf, 1) == -1) {
		FUNC9("unable to read pipe");
		goto out_close_pipes;
	}

	evlist->workload.cork_fd = go_pipe[1];
	FUNC0(child_ready_pipe[0]);
	return 0;

out_close_pipes:
	FUNC0(go_pipe[0]);
	FUNC0(go_pipe[1]);
out_close_ready_pipe:
	FUNC0(child_ready_pipe[0]);
	FUNC0(child_ready_pipe[1]);
	return -1;
}