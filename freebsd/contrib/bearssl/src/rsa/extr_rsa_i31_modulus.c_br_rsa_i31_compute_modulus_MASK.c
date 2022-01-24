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
struct TYPE_3__ {unsigned char* p; size_t plen; unsigned char* q; size_t qlen; int n_bitlen; } ;
typedef  TYPE_1__ br_rsa_private_key ;

/* Variables and functions */
 int /*<<< orphan*/  BR_MAX_RSA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

size_t
FUNC4(void *n, const br_rsa_private_key *sk)
{
	uint32_t tmp[2 * ((BR_MAX_RSA_SIZE + 30) / 31) + 5];
	uint32_t *t, *p, *q;
	const unsigned char *pbuf, *qbuf;
	size_t nlen, plen, qlen, tlen;

	/*
	 * Compute actual byte and lengths for p and q.
	 */
	pbuf = sk->p;
	plen = sk->plen;
	while (plen > 0 && *pbuf == 0) {
		pbuf ++;
		plen --;
	}
	qbuf = sk->q;
	qlen = sk->qlen;
	while (qlen > 0 && *qbuf == 0) {
		qbuf ++;
		qlen --;
	}

	t = tmp;
	tlen = (sizeof tmp) / (sizeof tmp[0]);

	/*
	 * Decode p.
	 */
	if ((31 * tlen) < (plen << 3) + 31) {
		return 0;
	}
	FUNC0(t, pbuf, plen);
	p = t;
	plen = (p[0] + 63) >> 5;
	t += plen;
	tlen -= plen;

	/*
	 * Decode q.
	 */
	if ((31 * tlen) < (qlen << 3) + 31) {
		return 0;
	}
	FUNC0(t, qbuf, qlen);
	q = t;
	qlen = (q[0] + 63) >> 5;
	t += qlen;
	tlen -= qlen;

	/*
	 * Computation can proceed only if we have enough room for the
	 * modulus.
	 */
	if (tlen < (plen + qlen + 1)) {
		return 0;
	}

	/*
	 * Private key already contains the modulus bit length, from which
	 * we can infer the output length. Even if n is NULL, we still had
	 * to decode p and q to make sure that the product can be computed.
	 */
	nlen = (sk->n_bitlen + 7) >> 3;
	if (n != NULL) {
		FUNC3(t, p[0]);
		FUNC2(t, p, q);
		FUNC1(n, nlen, t);
	}
	return nlen;
}