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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERF_PMU_FORMAT_BITS ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long,unsigned long*) ; 

void FUNC3(unsigned long *bits, long from, long to)
{
	long b;

	if (!to)
		to = from;

	FUNC1(bits, 0, FUNC0(PERF_PMU_FORMAT_BITS));
	for (b = from; b <= to; b++)
		FUNC2(b, bits);
}