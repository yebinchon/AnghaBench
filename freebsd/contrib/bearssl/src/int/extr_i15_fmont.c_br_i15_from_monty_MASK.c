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
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int /*<<< orphan*/ ) ; 

void
FUNC3(uint16_t *x, const uint16_t *m, uint16_t m0i)
{
	size_t len, u, v;

	len = (m[0] + 15) >> 4;
	for (u = 0; u < len; u ++) {
		uint32_t f, cc;

		f = FUNC0(x[1], m0i) & 0x7FFF;
		cc = 0;
		for (v = 0; v < len; v ++) {
			uint32_t z;

			z = (uint32_t)x[v + 1] + FUNC0(f, m[v + 1]) + cc;
			cc = z >> 15;
			if (v != 0) {
				x[v] = z & 0x7FFF;
			}
		}
		x[len] = cc;
	}

	/*
	 * We may have to do an extra subtraction, but only if the
	 * value in x[] is indeed greater than or equal to that of m[],
	 * which is why we must do two calls (first call computes the
	 * carry, second call performs the subtraction only if the carry
	 * is 0).
	 */
	FUNC2(x, m, FUNC1(FUNC2(x, m, 0)));
}