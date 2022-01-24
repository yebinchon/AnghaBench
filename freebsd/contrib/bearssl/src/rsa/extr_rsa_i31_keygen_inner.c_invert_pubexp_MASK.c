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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int const*,int) ; 
 int FUNC1 (int*,int*,int const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const) ; 

__attribute__((used)) static uint32_t
FUNC4(uint32_t *d, const uint32_t *m, uint32_t e, uint32_t *t)
{
	uint32_t *f;
	uint32_t r;

	f = t;
	t += 1 + ((m[0] + 31) >> 5);

	/*
	 * Compute d = 1/e mod m. Since p = 3 mod 4, m is odd.
	 */
	FUNC3(d, m[0]);
	d[1] = 1;
	FUNC3(f, m[0]);
	f[1] = e & 0x7FFFFFFF;
	f[2] = e >> 31;
	r = FUNC1(d, f, m, FUNC2(m[1]), t);

	/*
	 * We really want d = 1/e mod p-1, with p = 2m. By the CRT,
	 * the result is either the d we got, or d + m.
	 *
	 * Let's write e*d = 1 + k*m, for some integer k. Integers e
	 * and m are odd. If d is odd, then e*d is odd, which implies
	 * that k must be even; in that case, e*d = 1 + (k/2)*2m, and
	 * thus d is already fine. Conversely, if d is even, then k
	 * is odd, and we must add m to d in order to get the correct
	 * result.
	 */
	FUNC0(d, m, (uint32_t)(1 - (d[1] & 1)));

	return r;
}