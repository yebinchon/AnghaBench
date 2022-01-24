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
typedef  int /*<<< orphan*/  dtrace_aggdata_t ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDT_DMISMATCH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const,long double) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__ const,long double*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

int
FUNC8(dtrace_hdl_t *dtp, FILE *fp, const void *addr,
    size_t size, const dtrace_aggdata_t *aggdata)
{
	const int64_t *data = addr;
	long double total = 0, count = 0;
	int min, max, base, err;
	uint64_t arg;
	uint16_t step, levels;
	char c[32];
	unsigned int i;

	if (size < sizeof (uint64_t))
		return (FUNC6(dtp, EDT_DMISMATCH));

	arg = *data++;
	size -= sizeof (uint64_t);

	base = FUNC0(arg);
	step = FUNC2(arg);
	levels = FUNC1(arg);

	if (size != sizeof (uint64_t) * (levels + 2))
		return (FUNC6(dtp, EDT_DMISMATCH));

	min = 0;
	max = levels + 1;

	if (min == 0) {
		(void) FUNC7(c, sizeof (c), "< %d", base);
		err = FUNC4(dtp, fp, "%8s :", c);
	} else {
		err = FUNC4(dtp, fp, "%8d :", base + (min - 1) * step);
	}

	if (err < 0)
		return (-1);

	for (i = min; i <= max; i++) {
		FUNC5(dtp, data[i], &total);
		count += data[i];
	}

	for (i = min; i <= max; i++) {
		if (FUNC3(dtp, fp, data[i], total) < 0)
			return (-1);
	}

	(void) FUNC7(c, sizeof (c), ">= %d", base + (levels * step));
	return (FUNC4(dtp, fp, ": %-8s | %lld\n", c, (long long)count));
}