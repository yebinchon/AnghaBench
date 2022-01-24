#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_3__ {int dtada_minbin; int dtada_maxbin; } ;
typedef  TYPE_1__ dtrace_aggdata_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int DTRACE_QUANTIZE_NBUCKETS ; 
 int DTRACE_QUANTIZE_ZEROBUCKET ; 
 int /*<<< orphan*/  EDT_DMISMATCH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const,long double) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,long long,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__ const,long double*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(dtrace_hdl_t *dtp, FILE *fp, const void *addr,
    size_t size, const dtrace_aggdata_t *aggdata)
{
	const int64_t *data = addr;
	long double total = 0, count = 0;
	int min = aggdata->dtada_minbin, max = aggdata->dtada_maxbin, i;
	int64_t minval, maxval;

	if (size != DTRACE_QUANTIZE_NBUCKETS * sizeof (uint64_t))
		return (FUNC5(dtp, EDT_DMISMATCH));

	if (min != 0 && min != DTRACE_QUANTIZE_ZEROBUCKET)
		min--;

	if (max < DTRACE_QUANTIZE_NBUCKETS - 1)
		max++;

	minval = FUNC0(min);
	maxval = FUNC0(max);

	if (FUNC3(dtp, fp, " %*lld :", FUNC1(minval),
	    (long long)minval) < 0)
		return (-1);

	for (i = min; i <= max; i++) {
		FUNC4(dtp, data[i], &total);
		count += data[i];
	}

	for (i = min; i <= max; i++) {
		if (FUNC2(dtp, fp, data[i], total) < 0)
			return (-1);
	}

	if (FUNC3(dtp, fp, ": %*lld | %lld\n",
	    -FUNC1(maxval), (long long)maxval, (long long)count) < 0)
		return (-1);

	return (0);
}