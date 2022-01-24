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
typedef  int uint16_t ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static long double
FUNC5(int64_t *llquanta)
{
	int64_t arg = *llquanta++;
	uint16_t factor = FUNC0(arg);
	uint16_t low = FUNC2(arg);
	uint16_t high = FUNC1(arg);
	uint16_t nsteps = FUNC3(arg);
	int bin = 0, order;
	int64_t value = 1, next, step;
	long double total;

	FUNC4(nsteps >= factor);
	FUNC4(nsteps % factor == 0);

	for (order = 0; order < low; order++)
		value *= factor;

	total = (long double)llquanta[bin++] * (long double)(value - 1);

	next = value * factor;
	step = next > nsteps ? next / nsteps : 1;

	while (order <= high) {
		FUNC4(value < next);
		total += (long double)llquanta[bin++] * (long double)(value);

		if ((value += step) != next)
			continue;

		next = value * factor;
		step = next > nsteps ? next / nsteps : 1;
		order++;
	}

	return (total + (long double)llquanta[bin] * (long double)value);
}