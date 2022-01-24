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
struct perf_evsel {struct perf_evsel* name; TYPE_1__* tp_format; } ;
struct perf_event_attr {int sample_type; int sample_period; int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int PERF_SAMPLE_CPU ; 
 int PERF_SAMPLE_PERIOD ; 
 int PERF_SAMPLE_RAW ; 
 int PERF_SAMPLE_TIME ; 
 int /*<<< orphan*/  PERF_TYPE_TRACEPOINT ; 
 scalar_t__ FUNC0 (struct perf_evsel**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_attr*) ; 
 TYPE_1__* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_evsel*,struct perf_event_attr*,int) ; 
 struct perf_evsel* FUNC5 (int) ; 

struct perf_evsel *FUNC6(const char *sys, const char *name, int idx)
{
	struct perf_evsel *evsel = FUNC5(sizeof(*evsel));

	if (evsel != NULL) {
		struct perf_event_attr attr = {
			.type	       = PERF_TYPE_TRACEPOINT,
			.sample_type   = (PERF_SAMPLE_RAW | PERF_SAMPLE_TIME |
					  PERF_SAMPLE_CPU | PERF_SAMPLE_PERIOD),
		};

		if (FUNC0(&evsel->name, "%s:%s", sys, name) < 0)
			goto out_free;

		evsel->tp_format = FUNC2(sys, name);
		if (evsel->tp_format == NULL)
			goto out_free;

		FUNC1(&attr);
		attr.config = evsel->tp_format->id;
		attr.sample_period = 1;
		FUNC4(evsel, &attr, idx);
	}

	return evsel;

out_free:
	FUNC3(evsel->name);
	FUNC3(evsel);
	return NULL;
}