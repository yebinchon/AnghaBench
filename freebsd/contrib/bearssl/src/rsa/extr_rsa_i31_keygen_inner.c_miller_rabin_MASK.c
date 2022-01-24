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
typedef  int /*<<< orphan*/  br_prng_class ;
typedef  int /*<<< orphan*/  (* br_i31_modpow_opt_type ) (int*,unsigned char*,size_t,int const*,int,int*,size_t) ;

/* Variables and functions */
 int const FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,int const*) ; 
 int FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int*,int) ; 

__attribute__((used)) static uint32_t
FUNC4(const br_prng_class **rng, const uint32_t *x, int n,
	uint32_t *t, size_t tlen, br_i31_modpow_opt_type mp31)
{
	/*
	 * Since x = 3 mod 4, the Miller-Rabin test is simple:
	 *  - get a random base a (such that 1 < a < x-1)
	 *  - compute z = a^((x-1)/2) mod x
	 *  - if z != 1 and z != x-1, the number x is composite
	 *
	 * We generate bases 'a' randomly with a size which is
	 * one bit less than x, which ensures that a < x-1. It
	 * is not useful to verify that a > 1 because the probability
	 * that we get a value a equal to 0 or 1 is much smaller
	 * than the probability of our Miller-Rabin tests not to
	 * detect a composite, which is already quite smaller than the
	 * probability of the hardware misbehaving and return a
	 * composite integer because of some glitch (e.g. bad RAM
	 * or ill-timed cosmic ray).
	 */
	unsigned char *xm1d2;
	size_t xlen, xm1d2_len, xm1d2_len_u32, u;
	uint32_t asize;
	unsigned cc;
	uint32_t x0i;

	/*
	 * Compute (x-1)/2 (encoded).
	 */
	xm1d2 = (unsigned char *)t;
	xm1d2_len = ((x[0] - (x[0] >> 5)) + 7) >> 3;
	FUNC1(xm1d2, xm1d2_len, x);
	cc = 0;
	for (u = 0; u < xm1d2_len; u ++) {
		unsigned w;

		w = xm1d2[u];
		xm1d2[u] = (unsigned char)((w >> 1) | cc);
		cc = w << 7;
	}

	/*
	 * We used some words of the provided buffer for (x-1)/2.
	 */
	xm1d2_len_u32 = (xm1d2_len + 3) >> 2;
	t += xm1d2_len_u32;
	tlen -= xm1d2_len_u32;

	xlen = (x[0] + 31) >> 5;
	asize = x[0] - 1 - FUNC0(x[0] & 31);
	x0i = FUNC2(x[1]);
	while (n -- > 0) {
		uint32_t *a, *t2;
		uint32_t eq1, eqm1;
		size_t t2len;

		/*
		 * Generate a random base. We don't need the base to be
		 * really uniform modulo x, so we just get a random
		 * number which is one bit shorter than x.
		 */
		a = t;
		a[0] = x[0];
		a[xlen] = 0;
		FUNC3(rng, a, asize);

		/*
		 * Compute a^((x-1)/2) mod x. We assume here that the
		 * function will not fail (the temporary array is large
		 * enough).
		 */
		t2 = t + 1 + xlen;
		t2len = tlen - 1 - xlen;
		if ((t2len & 1) != 0) {
			/*
			 * Since the source array is 64-bit aligned and
			 * has an even number of elements (TEMPS), we
			 * can use the parity of the remaining length to
			 * detect and adjust alignment.
			 */
			t2 ++;
			t2len --;
		}
		mp31(a, xm1d2, xm1d2_len, x, x0i, t2, t2len);

		/*
		 * We must obtain either 1 or x-1. Note that x is odd,
		 * hence x-1 differs from x only in its low word (no
		 * carry).
		 */
		eq1 = a[1] ^ 1;
		eqm1 = a[1] ^ (x[1] - 1);
		for (u = 2; u <= xlen; u ++) {
			eq1 |= a[u];
			eqm1 |= a[u] ^ x[u];
		}

		if ((FUNC0(eq1) | FUNC0(eqm1)) == 0) {
			return 0;
		}
	}
	return 1;
}