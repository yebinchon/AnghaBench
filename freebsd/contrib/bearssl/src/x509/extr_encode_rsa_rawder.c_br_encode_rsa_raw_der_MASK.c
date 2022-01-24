#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_8__ {void const* n; size_t nlen; void const* e; size_t elen; } ;
typedef  TYPE_1__ br_rsa_public_key ;
struct TYPE_9__ {void const* p; size_t plen; void const* q; size_t qlen; void const* dp; size_t dplen; void const* dq; size_t dqlen; void const* iq; size_t iqlen; } ;
typedef  TYPE_2__ br_rsa_private_key ;
struct TYPE_10__ {size_t asn1len; } ;
typedef  TYPE_3__ br_asn1_uint ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,TYPE_3__) ; 
 TYPE_3__ FUNC2 (void const*,size_t) ; 
 size_t FUNC3 (size_t) ; 

size_t
FUNC4(void *dest, const br_rsa_private_key *sk,
	const br_rsa_public_key *pk, const void *d, size_t dlen)
{
	/*
	 * ASN.1 format:
	 *
	 *   RSAPrivateKey ::= SEQUENCE {
	 *       version           Version,
	 *       modulus           INTEGER,  -- n
	 *       publicExponent    INTEGER,  -- e
	 *       privateExponent   INTEGER,  -- d
	 *       prime1            INTEGER,  -- p
	 *       prime2            INTEGER,  -- q
	 *       exponent1         INTEGER,  -- d mod (p-1)
	 *       exponent2         INTEGER,  -- d mod (q-1)
	 *       coefficient       INTEGER,  -- (inverse of q) mod p
	 *       otherPrimeInfos   OtherPrimeInfos OPTIONAL
	 *   }
	 *
	 * The 'version' field is an INTEGER of value 0 (meaning: there
	 * are exactly two prime factors), and 'otherPrimeInfos' will
	 * be absent (because there are exactly two prime factors).
	 */

	br_asn1_uint num[9];
	size_t u, slen;

	/*
	 * For all INTEGER values, get the pointer and length for the
	 * data bytes.
	 */
	num[0] = FUNC2(NULL, 0);
	num[1] = FUNC2(pk->n, pk->nlen);
	num[2] = FUNC2(pk->e, pk->elen);
	num[3] = FUNC2(d, dlen);
	num[4] = FUNC2(sk->p, sk->plen);
	num[5] = FUNC2(sk->q, sk->qlen);
	num[6] = FUNC2(sk->dp, sk->dplen);
	num[7] = FUNC2(sk->dq, sk->dqlen);
	num[8] = FUNC2(sk->iq, sk->iqlen);

	/*
	 * Get the length of the SEQUENCE contents.
	 */
	slen = 0;
	for (u = 0; u < 9; u ++) {
		uint32_t ilen;

		ilen = num[u].asn1len;
		slen += 1 + FUNC3(ilen) + ilen;
	}

	if (dest == NULL) {
		return 1 + FUNC3(slen) + slen;
	} else {
		unsigned char *buf;
		size_t lenlen;

		buf = dest;
		*buf ++ = 0x30;  /* SEQUENCE tag */
		lenlen = FUNC0(buf, slen);
		buf += lenlen;
		for (u = 0; u < 9; u ++) {
			buf += FUNC1(buf, num[u]);
		}
		return 1 + lenlen + slen;
	}
}