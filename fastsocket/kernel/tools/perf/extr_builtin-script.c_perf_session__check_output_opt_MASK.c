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
struct perf_session {int dummy; } ;
struct perf_evsel {int dummy; } ;
struct TYPE_2__ {scalar_t__ fields; int /*<<< orphan*/  wildcard_set; scalar_t__ user_set; } ;

/* Variables and functions */
 int PERF_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* output ; 
 scalar_t__ FUNC1 (struct perf_evsel*,struct perf_session*) ; 
 struct perf_evsel* FUNC2 (struct perf_session*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct perf_session *session)
{
	int j;
	struct perf_evsel *evsel;

	for (j = 0; j < PERF_TYPE_MAX; ++j) {
		evsel = FUNC2(session, j);

		/*
		 * even if fields is set to 0 (ie., show nothing) event must
		 * exist if user explicitly includes it on the command line
		 */
		if (!evsel && output[j].user_set && !output[j].wildcard_set) {
			FUNC3("%s events do not exist. "
			       "Remove corresponding -f option to proceed.\n",
			       FUNC0(j));
			return -1;
		}

		if (evsel && output[j].fields &&
			FUNC1(evsel, session))
			return -1;
	}

	return 0;
}