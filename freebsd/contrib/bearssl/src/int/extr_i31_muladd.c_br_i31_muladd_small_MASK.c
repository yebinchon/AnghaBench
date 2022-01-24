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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int) ; 
 int FUNC8 (int,int,int const) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,size_t) ; 

void
FUNC10(uint32_t *x, uint32_t z, const uint32_t *m)
{
	uint32_t m_bitlen;
	unsigned mblr;
	size_t u, mlen;
	uint32_t a0, a1, b0, hi, g, q, tb;
	uint32_t under, over;
	uint32_t cc;

	/*
	 * We can test on the modulus bit length since we accept to
	 * leak that length.
	 */
	m_bitlen = m[0];
	if (m_bitlen == 0) {
		return;
	}
	if (m_bitlen <= 31) {
		uint32_t lo;

		hi = x[1] >> 1;
		lo = (x[1] << 31) | z;
		x[1] = FUNC8(hi, lo, m[1]);
		return;
	}
	mlen = (m_bitlen + 31) >> 5;
	mblr = (unsigned)m_bitlen & 31;

	/*
	 * Principle: we estimate the quotient (x*2^31+z)/m by
	 * doing a 64/32 division with the high words.
	 *
	 * Let:
	 *   w = 2^31
	 *   a = (w*a0 + a1) * w^N + a2
	 *   b = b0 * w^N + b2
	 * such that:
	 *   0 <= a0 < w
	 *   0 <= a1 < w
	 *   0 <= a2 < w^N
	 *   w/2 <= b0 < w
	 *   0 <= b2 < w^N
	 *   a < w*b
	 * I.e. the two top words of a are a0:a1, the top word of b is
	 * b0, we ensured that b0 is "full" (high bit set), and a is
	 * such that the quotient q = a/b fits on one word (0 <= q < w).
	 *
	 * If a = b*q + r (with 0 <= r < q), we can estimate q by
	 * doing an Euclidean division on the top words:
	 *   a0*w+a1 = b0*u + v  (with 0 <= v < b0)
	 * Then the following holds:
	 *   0 <= u <= w
	 *   u-2 <= q <= u
	 */
	hi = x[mlen];
	if (mblr == 0) {
		a0 = x[mlen];
		FUNC9(x + 2, x + 1, (mlen - 1) * sizeof *x);
		x[1] = z;
		a1 = x[mlen];
		b0 = m[mlen];
	} else {
		a0 = ((x[mlen] << (31 - mblr)) | (x[mlen - 1] >> mblr))
			& 0x7FFFFFFF;
		FUNC9(x + 2, x + 1, (mlen - 1) * sizeof *x);
		x[1] = z;
		a1 = ((x[mlen] << (31 - mblr)) | (x[mlen - 1] >> mblr))
			& 0x7FFFFFFF;
		b0 = ((m[mlen] << (31 - mblr)) | (m[mlen - 1] >> mblr))
			& 0x7FFFFFFF;
	}

	/*
	 * We estimate a divisor q. If the quotient returned by br_div()
	 * is g:
	 * -- If a0 == b0 then g == 0; we want q = 0x7FFFFFFF.
	 * -- Otherwise:
	 *    -- if g == 0 then we set q = 0;
	 *    -- otherwise, we set q = g - 1.
	 * The properties described above then ensure that the true
	 * quotient is q-1, q or q+1.
	 *
	 * Take care that a0, a1 and b0 are 31-bit words, not 32-bit. We
	 * must adjust the parameters to br_div() accordingly.
	 */
	g = FUNC5(a0 >> 1, a1 | (a0 << 31), b0);
	q = FUNC4(FUNC0(a0, b0), 0x7FFFFFFF, FUNC4(FUNC0(g, 0), 0, g - 1));

	/*
	 * We subtract q*m from x (with the extra high word of value 'hi').
	 * Since q may be off by 1 (in either direction), we may have to
	 * add or subtract m afterwards.
	 *
	 * The 'tb' flag will be true (1) at the end of the loop if the
	 * result is greater than or equal to the modulus (not counting
	 * 'hi' or the carry).
	 */
	cc = 0;
	tb = 1;
	for (u = 1; u <= mlen; u ++) {
		uint32_t mw, zw, xw, nxw;
		uint64_t zl;

		mw = m[u];
		zl = FUNC3(mw, q) + cc;
		cc = (uint32_t)(zl >> 31);
		zw = (uint32_t)zl & (uint32_t)0x7FFFFFFF;
		xw = x[u];
		nxw = xw - zw;
		cc += nxw >> 31;
		nxw &= 0x7FFFFFFF;
		x[u] = nxw;
		tb = FUNC4(FUNC0(nxw, mw), tb, FUNC1(nxw, mw));
	}

	/*
	 * If we underestimated q, then either cc < hi (one extra bit
	 * beyond the top array word), or cc == hi and tb is true (no
	 * extra bit, but the result is not lower than the modulus). In
	 * these cases we must subtract m once.
	 *
	 * Otherwise, we may have overestimated, which will show as
	 * cc > hi (thus a negative result). Correction is adding m once.
	 */
	over = FUNC1(cc, hi);
	under = ~over & (tb | FUNC2(cc, hi));
	FUNC6(x, m, over);
	FUNC7(x, m, under);
}