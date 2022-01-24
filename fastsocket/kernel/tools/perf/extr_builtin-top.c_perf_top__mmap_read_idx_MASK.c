#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int misc; scalar_t__ type; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; } ;
union perf_event {TYPE_2__ header; TYPE_1__ ip; } ;
typedef  int u8 ;
struct perf_top {int /*<<< orphan*/  tool; int /*<<< orphan*/  guest_us_samples; int /*<<< orphan*/  guest_kernel_samples; int /*<<< orphan*/  hide_kernel_symbols; int /*<<< orphan*/  kernel_samples; int /*<<< orphan*/  hide_user_symbols; int /*<<< orphan*/  us_samples; int /*<<< orphan*/  samples; int /*<<< orphan*/  evlist; struct perf_session* session; } ;
struct TYPE_7__ {int /*<<< orphan*/  nr_unknown_events; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct perf_session {TYPE_4__ hists; int /*<<< orphan*/  evlist; } ;
struct perf_sample {int /*<<< orphan*/  id; } ;
struct perf_evsel {int /*<<< orphan*/  hists; } ;
struct machine {int dummy; } ;

/* Variables and functions */
 scalar_t__ PERF_RECORD_MAX ; 
 int PERF_RECORD_MISC_CPUMODE_MASK ; 
#define  PERF_RECORD_MISC_GUEST_KERNEL 131 
#define  PERF_RECORD_MISC_GUEST_USER 130 
#define  PERF_RECORD_MISC_KERNEL 129 
#define  PERF_RECORD_MISC_USER 128 
 scalar_t__ PERF_RECORD_SAMPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct machine*,union perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,union perf_event*,struct perf_evsel*,struct perf_sample*,struct machine*) ; 
 struct perf_evsel* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 union perf_event* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,union perf_event*,struct perf_sample*) ; 
 struct machine* FUNC7 (struct perf_session*) ; 
 struct machine* FUNC8 (struct perf_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static void FUNC10(struct perf_top *top, int idx)
{
	struct perf_sample sample;
	struct perf_evsel *evsel;
	struct perf_session *session = top->session;
	union perf_event *event;
	struct machine *machine;
	u8 origin;
	int ret;

	while ((event = FUNC5(top->evlist, idx)) != NULL) {
		ret = FUNC6(top->evlist, event, &sample);
		if (ret) {
			FUNC9("Can't parse sample, err = %d\n", ret);
			continue;
		}

		evsel = FUNC4(session->evlist, sample.id);
		FUNC0(evsel != NULL);

		origin = event->header.misc & PERF_RECORD_MISC_CPUMODE_MASK;

		if (event->header.type == PERF_RECORD_SAMPLE)
			++top->samples;

		switch (origin) {
		case PERF_RECORD_MISC_USER:
			++top->us_samples;
			if (top->hide_user_symbols)
				continue;
			machine = FUNC7(session);
			break;
		case PERF_RECORD_MISC_KERNEL:
			++top->kernel_samples;
			if (top->hide_kernel_symbols)
				continue;
			machine = FUNC7(session);
			break;
		case PERF_RECORD_MISC_GUEST_KERNEL:
			++top->guest_kernel_samples;
			machine = FUNC8(session, event->ip.pid);
			break;
		case PERF_RECORD_MISC_GUEST_USER:
			++top->guest_us_samples;
			/*
			 * TODO: we don't process guest user from host side
			 * except simple counting.
			 */
			/* Fall thru */
		default:
			continue;
		}


		if (event->header.type == PERF_RECORD_SAMPLE) {
			FUNC3(&top->tool, event, evsel,
						   &sample, machine);
		} else if (event->header.type < PERF_RECORD_MAX) {
			FUNC1(&evsel->hists, event->header.type);
			FUNC2(machine, event);
		} else
			++session->hists.stats.nr_unknown_events;
	}
}