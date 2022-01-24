#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {unsigned char* n; size_t nlen; int /*<<< orphan*/  elen; int /*<<< orphan*/  e; } ;
typedef  TYPE_1__ br_rsa_public_key ;

/* Variables and functions */
 int BR_MAX_RSA_SIZE ; 
 int TLEN ; 
 int /*<<< orphan*/  FUNC0 (int*,unsigned char const*,size_t) ; 
 int FUNC1 (int*,unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int FUNC4 (int) ; 

uint32_t
FUNC5(unsigned char *x, size_t xlen,
	const br_rsa_public_key *pk)
{
	const unsigned char *n;
	size_t nlen;
	uint32_t tmp[1 + TLEN];
	uint32_t *m, *a, *t;
	size_t fwlen;
	long z;
	uint32_t m0i, r;

	/*
	 * Get the actual length of the modulus, and see if it fits within
	 * our stack buffer. We also check that the length of x[] is valid.
	 */
	n = pk->n;
	nlen = pk->nlen;
	while (nlen > 0 && *n == 0) {
		n ++;
		nlen --;
	}
	if (nlen == 0 || nlen > (BR_MAX_RSA_SIZE >> 3) || xlen != nlen) {
		return 0;
	}
	z = (long)nlen << 3;
	fwlen = 1;
	while (z > 0) {
		z -= 31;
		fwlen ++;
	}
	/*
	 * Round up length to an even number.
	 */
	fwlen += (fwlen & 1);

	/*
	 * The modulus gets decoded into m[].
	 * The value to exponentiate goes into a[].
	 * The temporaries for modular exponentiation are in t[].
	 */
	m = tmp;
	a = m + fwlen;
	t = m + 2 * fwlen;

	/*
	 * Decode the modulus.
	 */
	FUNC0(m, n, nlen);
	m0i = FUNC4(m[1]);

	/*
	 * Note: if m[] is even, then m0i == 0. Otherwise, m0i must be
	 * an odd integer.
	 */
	r = m0i & 1;

	/*
	 * Decode x[] into a[]; we also check that its value is proper.
	 */
	r &= FUNC1(a, x, xlen, m);

	/*
	 * Compute the modular exponentiation.
	 */
	FUNC3(a, pk->e, pk->elen, m, m0i, t, TLEN - 2 * fwlen);

	/*
	 * Encode the result.
	 */
	FUNC2(x, xlen, a);
	return r;
}