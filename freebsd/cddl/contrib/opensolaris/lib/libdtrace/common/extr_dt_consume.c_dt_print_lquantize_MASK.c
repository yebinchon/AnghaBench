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
 int /*<<< orphan*/  EDT_DMISMATCH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const,int /*<<< orphan*/ ,long double,char,char) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__ const,long double*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

int
FUNC8(dtrace_hdl_t *dtp, FILE *fp, const void *addr,
    size_t size, uint64_t normal)
{
	const int64_t *data = addr;
	int i, first_bin, last_bin, base;
	uint64_t arg;
	long double total = 0;
	uint16_t step, levels;
	char positives = 0, negatives = 0;

	if (size < sizeof (uint64_t))
		return (FUNC6(dtp, EDT_DMISMATCH));

	arg = *data++;
	size -= sizeof (uint64_t);

	base = FUNC0(arg);
	step = FUNC2(arg);
	levels = FUNC1(arg);

	first_bin = 0;
	last_bin = levels + 1;

	if (size != sizeof (uint64_t) * (levels + 2))
		return (FUNC6(dtp, EDT_DMISMATCH));

	while (first_bin <= levels + 1 && data[first_bin] == 0)
		first_bin++;

	if (first_bin > levels + 1) {
		first_bin = 0;
		last_bin = 2;
	} else {
		if (first_bin > 0)
			first_bin--;

		while (last_bin > 0 && data[last_bin] == 0)
			last_bin--;

		if (last_bin < levels + 1)
			last_bin++;
	}

	for (i = first_bin; i <= last_bin; i++) {
		positives |= (data[i] > 0);
		negatives |= (data[i] < 0);
		FUNC5(dtp, data[i], &total);
	}

	if (FUNC4(dtp, fp, "\n%16s %41s %-9s\n", "value",
	    "------------- Distribution -------------", "count") < 0)
		return (-1);

	for (i = first_bin; i <= last_bin; i++) {
		char c[32];
		int err;

		if (i == 0) {
			(void) FUNC7(c, sizeof (c), "< %d", base);
			err = FUNC4(dtp, fp, "%16s ", c);
		} else if (i == levels + 1) {
			(void) FUNC7(c, sizeof (c), ">= %d",
			    base + (levels * step));
			err = FUNC4(dtp, fp, "%16s ", c);
		} else {
			err = FUNC4(dtp, fp, "%16d ",
			    base + (i - 1) * step);
		}

		if (err < 0 || FUNC3(dtp, fp, data[i], normal,
		    total, positives, negatives) < 0)
			return (-1);
	}

	return (0);
}