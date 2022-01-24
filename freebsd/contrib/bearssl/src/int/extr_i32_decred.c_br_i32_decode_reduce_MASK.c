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
 int FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

void
FUNC4(uint32_t *x,
	const void *src, size_t len, const uint32_t *m)
{
	uint32_t m_bitlen;
	size_t mblen, k, q;
	const unsigned char *buf;

	m_bitlen = m[0];

	/*
	 * Special case for an invalid modulus.
	 */
	if (m_bitlen == 0) {
		x[0] = 0;
		return;
	}

	/*
	 * Clear the destination.
	 */
	FUNC3(x, m_bitlen);

	/*
	 * First decode directly as many bytes as possible without
	 * reduction, taking care to leave a number of bytes which
	 * is a multiple of 4.
	 */
	mblen = (m_bitlen + 7) >> 3;
	k = mblen - 1;

	/*
	 * Up to k bytes can be safely decoded.
	 */
	if (k >= len) {
		FUNC1(x, src, len);
		x[0] = m_bitlen;
		return;
	}

	/*
	 * We want to first inject some bytes with direct decoding,
	 * then extra bytes by whole 32-bit words. First compute
	 * the size that should be injected that way.
	 */
	buf = src;
	q = (len - k + 3) & ~(size_t)3;

	/*
	 * It may happen that this is more than what we already have
	 * (by at most 3 bytes). Such a case may happen only with
	 * a very short modulus. In that case, we must process the first
	 * bytes "manually".
	 */
	if (q > len) {
		int i;
		uint32_t w;

		w = 0;
		for (i = 0; i < 4; i ++) {
			w <<= 8;
			if (q <= len) {
				w |= buf[len - q];
			}
			q --;
		}
		FUNC2(x, w, m);
	} else {
		FUNC1(x, buf, len - q);
		x[0] = m_bitlen;
	}

	/*
	 * At that point, we have exactly q bytes to inject, and q is
	 * a multiple of 4.
	 */
	for (k = len - q; k < len; k += 4) {
		FUNC2(x, FUNC0(buf + k), m);
	}
}