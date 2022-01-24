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
typedef  union perf_event {int dummy; } perf_event ;
struct thread {int dummy; } ;
struct perf_sample {int /*<<< orphan*/  raw_size; int /*<<< orphan*/  raw_data; int /*<<< orphan*/  cpu; } ;
struct perf_event_attr {size_t type; } ;
struct perf_evsel {int /*<<< orphan*/  tp_format; struct perf_event_attr attr; } ;
struct machine {int dummy; } ;
struct addr_location {struct thread* thread; } ;
struct TYPE_4__ {scalar_t__ fields; } ;
struct TYPE_3__ {int /*<<< orphan*/  use_callchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  DSO ; 
 int /*<<< orphan*/  IP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYM ; 
 int /*<<< orphan*/  SYMOFFSET ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct perf_event_attr*) ; 
 TYPE_2__* output ; 
 int /*<<< orphan*/  FUNC3 (struct perf_evsel*,union perf_event*,struct perf_sample*,struct machine*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (union perf_event*,struct perf_sample*,struct machine*,struct thread*,struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC5 (union perf_event*,struct perf_sample*,struct perf_evsel*,struct machine*,struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_sample*,struct thread*,struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static void FUNC8(union perf_event *event, struct perf_sample *sample,
			  struct perf_evsel *evsel, struct machine *machine,
			  struct addr_location *al)
{
	struct perf_event_attr *attr = &evsel->attr;
	struct thread *thread = al->thread;

	if (output[attr->type].fields == 0)
		return;

	FUNC6(sample, thread, evsel);

	if (FUNC2(attr)) {
		FUNC5(event, sample, evsel, machine, thread);
		return;
	}

	if (FUNC0(TRACE))
		FUNC1(evsel->tp_format, sample->cpu,
				    sample->raw_data, sample->raw_size);
	if (FUNC0(ADDR))
		FUNC4(event, sample, machine, thread, attr);

	if (FUNC0(IP)) {
		if (!symbol_conf.use_callchain)
			FUNC7(" ");
		else
			FUNC7("\n");
		FUNC3(evsel, event, sample, machine,
				     FUNC0(SYM), FUNC0(DSO),
				     FUNC0(SYMOFFSET));
	}

	FUNC7("\n");
}