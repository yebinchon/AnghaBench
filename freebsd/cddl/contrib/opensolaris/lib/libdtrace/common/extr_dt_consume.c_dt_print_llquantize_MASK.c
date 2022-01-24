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
typedef  int uint16_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDT_DMISMATCH ; 
 size_t INT32_MAX ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const,int /*<<< orphan*/ ,long double,char,char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__ const,long double*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,long long) ; 

int
FUNC10(dtrace_hdl_t *dtp, FILE *fp, const void *addr,
    size_t size, uint64_t normal)
{
	int i, first_bin, last_bin, bin = 1, order, levels;
	uint16_t factor, low, high, nsteps;
	const int64_t *data = addr;
	int64_t value = 1, next, step;
	char positives = 0, negatives = 0;
	long double total = 0;
	uint64_t arg;
	char c[32];

	if (size < sizeof (uint64_t))
		return (FUNC8(dtp, EDT_DMISMATCH));

	arg = *data++;
	size -= sizeof (uint64_t);

	factor = FUNC0(arg);
	low = FUNC2(arg);
	high = FUNC1(arg);
	nsteps = FUNC3(arg);

	/*
	 * We don't expect to be handed invalid llquantize() parameters here,
	 * but sanity check them (to a degree) nonetheless.
	 */
	if (size > INT32_MAX || factor < 2 || low >= high ||
	    nsteps == 0 || factor > nsteps)
		return (FUNC8(dtp, EDT_DMISMATCH));

	levels = (int)size / sizeof (uint64_t);

	first_bin = 0;
	last_bin = levels - 1;

	while (first_bin < levels && data[first_bin] == 0)
		first_bin++;

	if (first_bin == levels) {
		first_bin = 0;
		last_bin = 1;
	} else {
		if (first_bin > 0)
			first_bin--;

		while (last_bin > 0 && data[last_bin] == 0)
			last_bin--;

		if (last_bin < levels - 1)
			last_bin++;
	}

	for (i = first_bin; i <= last_bin; i++) {
		positives |= (data[i] > 0);
		negatives |= (data[i] < 0);
		FUNC7(dtp, data[i], &total);
	}

	if (FUNC6(dtp, fp, "\n%16s %41s %-9s\n", "value",
	    "------------- Distribution -------------", "count") < 0)
		return (-1);

	for (order = 0; order < low; order++)
		value *= factor;

	next = value * factor;
	step = next > nsteps ? next / nsteps : 1;

	if (first_bin == 0) {
		(void) FUNC9(c, sizeof (c), "< %lld", (long long)value);

		if (FUNC6(dtp, fp, "%16s ", c) < 0)
			return (-1);

		if (FUNC5(dtp, fp, data[0], normal,
		    total, positives, negatives) < 0)
			return (-1);
	}

	while (order <= high) {
		if (bin >= first_bin && bin <= last_bin) {
			if (FUNC6(dtp, fp, "%16lld ", (long long)value) < 0)
				return (-1);

			if (FUNC5(dtp, fp, data[bin],
			    normal, total, positives, negatives) < 0)
				return (-1);
		}

		FUNC4(value < next);
		bin++;

		if ((value += step) != next)
			continue;

		next = value * factor;
		step = next > nsteps ? next / nsteps : 1;
		order++;
	}

	if (last_bin < bin)
		return (0);

	FUNC4(last_bin == bin);
	(void) FUNC9(c, sizeof (c), ">= %lld", (long long)value);

	if (FUNC6(dtp, fp, "%16s ", c) < 0)
		return (-1);

	return (FUNC5(dtp, fp, data[bin], normal,
	    total, positives, negatives));
}