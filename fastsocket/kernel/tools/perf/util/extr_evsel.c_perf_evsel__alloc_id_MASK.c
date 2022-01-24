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
typedef  int /*<<< orphan*/  u64 ;
struct perf_sample_id {int dummy; } ;
struct perf_evsel {int /*<<< orphan*/ * sample_id; int /*<<< orphan*/ * id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

int FUNC3(struct perf_evsel *evsel, int ncpus, int nthreads)
{
	evsel->sample_id = FUNC1(ncpus, nthreads, sizeof(struct perf_sample_id));
	if (evsel->sample_id == NULL)
		return -ENOMEM;

	evsel->id = FUNC2(ncpus * nthreads * sizeof(u64));
	if (evsel->id == NULL) {
		FUNC0(evsel->sample_id);
		evsel->sample_id = NULL;
		return -ENOMEM;
	}

	return 0;
}