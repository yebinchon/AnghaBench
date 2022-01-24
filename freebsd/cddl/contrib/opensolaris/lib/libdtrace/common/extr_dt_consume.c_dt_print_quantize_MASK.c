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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int DTRACE_QUANTIZE_NBUCKETS ; 
 int DTRACE_QUANTIZE_ZEROBUCKET ; 
 int /*<<< orphan*/  EDT_DMISMATCH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const,int /*<<< orphan*/ ,long double,char,char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__ const,long double*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(dtrace_hdl_t *dtp, FILE *fp, const void *addr,
    size_t size, uint64_t normal)
{
	const int64_t *data = addr;
	int i, first_bin = 0, last_bin = DTRACE_QUANTIZE_NBUCKETS - 1;
	long double total = 0;
	char positives = 0, negatives = 0;

	if (size != DTRACE_QUANTIZE_NBUCKETS * sizeof (uint64_t))
		return (FUNC5(dtp, EDT_DMISMATCH));

	while (first_bin < DTRACE_QUANTIZE_NBUCKETS - 1 && data[first_bin] == 0)
		first_bin++;

	if (first_bin == DTRACE_QUANTIZE_NBUCKETS - 1) {
		/*
		 * There isn't any data.  This is possible if the aggregation
		 * has been clear()'d or if negative increment values have been
		 * used.  Regardless, we'll print the buckets around 0.
		 */
		first_bin = DTRACE_QUANTIZE_ZEROBUCKET - 1;
		last_bin = DTRACE_QUANTIZE_ZEROBUCKET + 1;
	} else {
		if (first_bin > 0)
			first_bin--;

		while (last_bin > 0 && data[last_bin] == 0)
			last_bin--;

		if (last_bin < DTRACE_QUANTIZE_NBUCKETS - 1)
			last_bin++;
	}

	for (i = first_bin; i <= last_bin; i++) {
		positives |= (data[i] > 0);
		negatives |= (data[i] < 0);
		FUNC4(dtp, data[i], &total);
	}

	if (FUNC1(dtp, fp, 0) < 0)
		return (-1);

	for (i = first_bin; i <= last_bin; i++) {
		if (FUNC3(dtp, fp, "%16lld ",
		    (long long)FUNC0(i)) < 0)
			return (-1);

		if (FUNC2(dtp, fp, data[i], normal, total,
		    positives, negatives) < 0)
			return (-1);
	}

	return (0);
}