#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct symbol {int dummy; } ;
struct perf_sample {int /*<<< orphan*/  period; scalar_t__ callchain; } ;
struct TYPE_7__ {int /*<<< orphan*/  total_period; } ;
struct TYPE_9__ {TYPE_2__ stats; } ;
struct perf_evsel {TYPE_4__ hists; int /*<<< orphan*/  idx; } ;
struct machine {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * sym; } ;
struct hist_entry {TYPE_1__ ms; int /*<<< orphan*/  callchain; } ;
struct annotation {int /*<<< orphan*/ * src; } ;
struct addr_location {int /*<<< orphan*/  addr; int /*<<< orphan*/  thread; } ;
struct TYPE_8__ {scalar_t__ use_callchain; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PERF_RECORD_SAMPLE ; 
 struct hist_entry* FUNC0 (TYPE_4__*,struct addr_location*,struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  callchain_cursor ; 
 int FUNC3 (struct hist_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct machine*,struct perf_evsel*,int /*<<< orphan*/ ,struct perf_sample*,struct symbol**) ; 
 scalar_t__ sort__has_parent ; 
 scalar_t__ sort__has_sym ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct annotation* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__ symbol_conf ; 
 int use_browser ; 

__attribute__((used)) static int FUNC8(struct perf_evsel *evsel,
				      struct addr_location *al,
				      struct perf_sample *sample,
				      struct machine *machine)
{
	struct symbol *parent = NULL;
	int err = 0;
	struct hist_entry *he;

	if ((sort__has_parent || symbol_conf.use_callchain) && sample->callchain) {
		err = FUNC5(machine, evsel, al->thread,
						 sample, &parent);
		if (err)
			return err;
	}

	he = FUNC0(&evsel->hists, al, parent, sample->period);
	if (he == NULL)
		return -ENOMEM;

	if (symbol_conf.use_callchain) {
		err = FUNC2(he->callchain,
				       &callchain_cursor,
				       sample->period);
		if (err)
			return err;
	}
	/*
	 * Only in the newt browser we are doing integrated annotation,
	 * so we don't allocated the extra space needed because the stdio
	 * code will not use it.
	 */
	if (he->ms.sym != NULL && use_browser == 1 && sort__has_sym) {
		struct annotation *notes = FUNC7(he->ms.sym);

		FUNC1(evsel != NULL);

		err = -ENOMEM;
		if (notes->src == NULL && FUNC6(he->ms.sym) < 0)
			goto out;

		err = FUNC3(he, evsel->idx, al->addr);
	}

	evsel->hists.stats.total_period += sample->period;
	FUNC4(&evsel->hists, PERF_RECORD_SAMPLE);
out:
	return err;
}