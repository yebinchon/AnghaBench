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
struct perf_session {int dummy; } ;
struct perf_evsel_str_handler {char* member_0; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  input_name ; 
 int /*<<< orphan*/  perf_evsel__process_alloc_event ; 
 int /*<<< orphan*/  perf_evsel__process_alloc_node_event ; 
 int /*<<< orphan*/  perf_evsel__process_free_event ; 
 int /*<<< orphan*/  perf_kmem ; 
 scalar_t__ FUNC0 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_session*,char*) ; 
 struct perf_session* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct perf_session*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct perf_session*,struct perf_evsel_str_handler const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(void)
{
	int err = -EINVAL;
	struct perf_session *session;
	const struct perf_evsel_str_handler kmem_tracepoints[] = {
		{ "kmem:kmalloc",		perf_evsel__process_alloc_event, },
    		{ "kmem:kmem_cache_alloc",	perf_evsel__process_alloc_event, },
		{ "kmem:kmalloc_node",		perf_evsel__process_alloc_node_event, },
    		{ "kmem:kmem_cache_alloc_node", perf_evsel__process_alloc_node_event, },
		{ "kmem:kfree",			perf_evsel__process_free_event, },
    		{ "kmem:kmem_cache_free",	perf_evsel__process_free_event, },
	};

	session = FUNC3(input_name, O_RDONLY, 0, false, &perf_kmem);
	if (session == NULL)
		return -ENOMEM;

	if (FUNC0(session) < 0)
		goto out_delete;

	if (!FUNC2(session, "kmem record"))
		goto out_delete;

	if (FUNC5(session, kmem_tracepoints)) {
		FUNC6("Initializing perf session tracepoint handlers failed\n");
		return -1;
	}

	FUNC8();
	err = FUNC4(session, &perf_kmem);
	if (err != 0)
		goto out_delete;
	FUNC9();
	FUNC7(session);
out_delete:
	FUNC1(session);
	return err;
}