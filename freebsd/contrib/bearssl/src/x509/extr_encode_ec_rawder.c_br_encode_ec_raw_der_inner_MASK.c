#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t qlen; unsigned char const* q; } ;
typedef  TYPE_1__ br_ec_public_key ;
struct TYPE_6__ {size_t xlen; unsigned char const* x; int /*<<< orphan*/  curve; } ;
typedef  TYPE_2__ br_ec_private_key ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*,int) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,unsigned char const) ; 

size_t
FUNC4(void *dest,
	const br_ec_private_key *sk, const br_ec_public_key *pk,
	int include_curve_oid)
{
	/*
	 * ASN.1 format:
	 *
	 *   ECPrivateKey ::= SEQUENCE {
	 *     version        INTEGER { ecPrivkeyVer1(1) } (ecPrivkeyVer1),
	 *     privateKey     OCTET STRING,
	 *     parameters [0] ECParameters {{ NamedCurve }} OPTIONAL,
	 *     publicKey  [1] BIT STRING OPTIONAL
	 *   }
	 *
	 * The tages '[0]' and '[1]' are explicit. The 'ECParameters'
	 * is a CHOICE; in our case, it will always be an OBJECT IDENTIFIER
	 * that identifies the curve.
	 *
	 * The value of the 'privateKey' field is the raw unsigned big-endian
	 * encoding of the private key (integer modulo the curve subgroup
	 * order); there is no INTEGER tag, and the leading bit may be 1.
	 * Also, leading bytes of value 0x00 are _not_ removed.
	 *
	 * The 'publicKey' contents are the raw encoded public key point,
	 * normally uncompressed (leading byte of value 0x04, followed
	 * by the unsigned big-endian encodings of the X and Y coordinates,
	 * padded to the full field length if necessary).
	 */

	size_t len_version, len_privateKey, len_parameters, len_publicKey;
	size_t len_publicKey_bits, len_seq;
	const unsigned char *oid;

	if (include_curve_oid) {
		oid = FUNC1(sk->curve);
		if (oid == NULL) {
			return 0;
		}
	} else {
		oid = NULL;
	}
	len_version = 3;
	len_privateKey = 1 + FUNC2(sk->xlen) + sk->xlen;
	if (include_curve_oid) {
		len_parameters = 4 + oid[0];
	} else {
		len_parameters = 0;
	}
	if (pk == NULL) {
		len_publicKey = 0;
		len_publicKey_bits = 0;
	} else {
		len_publicKey_bits = 2 + FUNC2(pk->qlen) + pk->qlen;
		len_publicKey = 1 + FUNC2(len_publicKey_bits)
			+ len_publicKey_bits;
	}
	len_seq = len_version + len_privateKey + len_parameters + len_publicKey;
	if (dest == NULL) {
		return 1 + FUNC2(len_seq) + len_seq;
	} else {
		unsigned char *buf;
		size_t lenlen;

		buf = dest;
		*buf ++ = 0x30;  /* SEQUENCE tag */
		lenlen = FUNC0(buf, len_seq);
		buf += lenlen;

		/* version */
		*buf ++ = 0x02;
		*buf ++ = 0x01;
		*buf ++ = 0x01;

		/* privateKey */
		*buf ++ = 0x04;
		buf += FUNC0(buf, sk->xlen);
		FUNC3(buf, sk->x, sk->xlen);
		buf += sk->xlen;

		/* parameters */
		if (include_curve_oid) {
			*buf ++ = 0xA0;
			*buf ++ = oid[0] + 2;
			*buf ++ = 0x06;
			FUNC3(buf, oid, oid[0] + 1);
			buf += oid[0] + 1;
		}

		/* publicKey */
		if (pk != NULL) {
			*buf ++ = 0xA1;
			buf += FUNC0(buf, len_publicKey_bits);
			*buf ++ = 0x03;
			buf += FUNC0(buf, pk->qlen + 1);
			*buf ++ = 0x00;
			FUNC3(buf, pk->q, pk->qlen);
			/* buf += pk->qlen; */
		}

		return 1 + lenlen + len_seq;
	}
}