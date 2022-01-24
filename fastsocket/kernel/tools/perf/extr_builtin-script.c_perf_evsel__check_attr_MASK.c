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
struct perf_event_attr {int sample_type; } ;
struct perf_evsel {struct perf_event_attr attr; } ;
struct TYPE_2__ {int use_callchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  CPU ; 
 int /*<<< orphan*/  DSO ; 
 int EINVAL ; 
 int /*<<< orphan*/  IP ; 
 int PERF_OUTPUT_ADDR ; 
 int PERF_OUTPUT_CPU ; 
 int PERF_OUTPUT_IP ; 
 int PERF_OUTPUT_PID ; 
 int PERF_OUTPUT_TID ; 
 int PERF_OUTPUT_TIME ; 
 int /*<<< orphan*/  PERF_SAMPLE_ADDR ; 
 int PERF_SAMPLE_CALLCHAIN ; 
 int /*<<< orphan*/  PERF_SAMPLE_CPU ; 
 int /*<<< orphan*/  PERF_SAMPLE_IP ; 
 int /*<<< orphan*/  PERF_SAMPLE_TID ; 
 int /*<<< orphan*/  PERF_SAMPLE_TIME ; 
 int /*<<< orphan*/  PID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYM ; 
 int /*<<< orphan*/  SYMOFFSET ; 
 int /*<<< orphan*/  TID ; 
 int /*<<< orphan*/  TIME ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  no_callchain ; 
 scalar_t__ FUNC1 (struct perf_evsel*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_session*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int FUNC4(struct perf_evsel *evsel,
				  struct perf_session *session)
{
	struct perf_event_attr *attr = &evsel->attr;

	if (FUNC0(TRACE) &&
		!FUNC2(session, "record -R"))
		return -EINVAL;

	if (FUNC0(IP)) {
		if (FUNC1(evsel, PERF_SAMPLE_IP, "IP",
					    PERF_OUTPUT_IP))
			return -EINVAL;

		if (!no_callchain &&
		    !(attr->sample_type & PERF_SAMPLE_CALLCHAIN))
			symbol_conf.use_callchain = false;
	}

	if (FUNC0(ADDR) &&
		FUNC1(evsel, PERF_SAMPLE_ADDR, "ADDR",
					PERF_OUTPUT_ADDR))
		return -EINVAL;

	if (FUNC0(SYM) && !FUNC0(IP) && !FUNC0(ADDR)) {
		FUNC3("Display of symbols requested but neither sample IP nor "
			   "sample address\nis selected. Hence, no addresses to convert "
		       "to symbols.\n");
		return -EINVAL;
	}
	if (FUNC0(SYMOFFSET) && !FUNC0(SYM)) {
		FUNC3("Display of offsets requested but symbol is not"
		       "selected.\n");
		return -EINVAL;
	}
	if (FUNC0(DSO) && !FUNC0(IP) && !FUNC0(ADDR)) {
		FUNC3("Display of DSO requested but neither sample IP nor "
			   "sample address\nis selected. Hence, no addresses to convert "
		       "to DSO.\n");
		return -EINVAL;
	}

	if ((FUNC0(PID) || FUNC0(TID)) &&
		FUNC1(evsel, PERF_SAMPLE_TID, "TID",
					PERF_OUTPUT_TID|PERF_OUTPUT_PID))
		return -EINVAL;

	if (FUNC0(TIME) &&
		FUNC1(evsel, PERF_SAMPLE_TIME, "TIME",
					PERF_OUTPUT_TIME))
		return -EINVAL;

	if (FUNC0(CPU) &&
		FUNC1(evsel, PERF_SAMPLE_CPU, "CPU",
					PERF_OUTPUT_CPU))
		return -EINVAL;

	return 0;
}