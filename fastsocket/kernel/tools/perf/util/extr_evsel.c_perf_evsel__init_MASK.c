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
struct perf_event_attr {int /*<<< orphan*/  sample_type; } ;
struct perf_evsel {int idx; int /*<<< orphan*/  sample_size; int /*<<< orphan*/  hists; int /*<<< orphan*/  node; struct perf_event_attr attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct perf_evsel *evsel,
		      struct perf_event_attr *attr, int idx)
{
	evsel->idx	   = idx;
	evsel->attr	   = *attr;
	FUNC0(&evsel->node);
	FUNC2(&evsel->hists);
	evsel->sample_size = FUNC1(attr->sample_type);
}