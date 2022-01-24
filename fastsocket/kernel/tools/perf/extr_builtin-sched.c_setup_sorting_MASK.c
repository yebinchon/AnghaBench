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
struct perf_sched {int /*<<< orphan*/  cmp_pid; int /*<<< orphan*/  sort_list; int /*<<< orphan*/  sort_order; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char const* const*,struct option const*) ; 

__attribute__((used)) static void FUNC6(struct perf_sched *sched, const struct option *options,
			  const char * const usage_msg[])
{
	char *tmp, *tok, *str = FUNC3(sched->sort_order);

	for (tok = FUNC4(str, ", ", &tmp);
			tok; tok = FUNC4(NULL, ", ", &tmp)) {
		if (FUNC2(tok, &sched->sort_list) < 0) {
			FUNC0("Unknown --sort key: `%s'", tok);
			FUNC5(usage_msg, options);
		}
	}

	FUNC1(str);

	FUNC2("pid", &sched->cmp_pid);
}