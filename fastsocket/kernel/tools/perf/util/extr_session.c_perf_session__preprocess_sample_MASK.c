#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
union perf_event {TYPE_1__ header; } ;
struct TYPE_6__ {int /*<<< orphan*/  total_invalid_chains; int /*<<< orphan*/  nr_invalid_chains; } ;
struct TYPE_5__ {TYPE_3__ stats; } ;
struct perf_session {TYPE_2__ hists; int /*<<< orphan*/  evlist; } ;
struct perf_sample {scalar_t__ period; int /*<<< orphan*/  callchain; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PERF_RECORD_SAMPLE ; 
 int PERF_SAMPLE_CALLCHAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,union perf_event*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct perf_session *session,
					   union perf_event *event, struct perf_sample *sample)
{
	if (event->header.type != PERF_RECORD_SAMPLE ||
	    !(FUNC1(session->evlist) & PERF_SAMPLE_CALLCHAIN))
		return 0;

	if (!FUNC0(sample->callchain, event)) {
		FUNC2("call-chain problem with event, skipping it.\n");
		++session->hists.stats.nr_invalid_chains;
		session->hists.stats.total_invalid_chains += sample->period;
		return -EINVAL;
	}
	return 0;
}