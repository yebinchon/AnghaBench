#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  br_ec_public_key ;
struct TYPE_4__ {int /*<<< orphan*/  curve; } ;
typedef  TYPE_1__ br_ec_private_key ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*,size_t) ; 
 size_t FUNC1 (unsigned char*,TYPE_1__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,int) ; 

size_t
FUNC5(void *dest,
	const br_ec_private_key *sk, const br_ec_public_key *pk)
{
	/*
	 * ASN.1 format:
	 *
	 *   OneAsymmetricKey ::= SEQUENCE {
	 *     version                   Version,
	 *     privateKeyAlgorithm       PrivateKeyAlgorithmIdentifier,
	 *     privateKey                PrivateKey,
	 *     attributes            [0] Attributes OPTIONAL,
	 *     ...,
	 *     [[2: publicKey        [1] PublicKey OPTIONAL ]],
	 *     ...
	 *   }
	 *
	 * We don't include attributes or public key (the public key
	 * is included in the private key value instead). The
	 * 'version' field is an INTEGER that we will set to 0
	 * (meaning 'v1', compatible with previous versions of PKCS#8).
	 * The 'privateKeyAlgorithm' structure is an AlgorithmIdentifier
	 * whose OID should be id-ecPublicKey, with, as parameters, the
	 * curve OID. The 'privateKey' is an OCTET STRING, whose value
	 * is the "raw DER" encoding of the key pair.
	 */

	/*
	 * OID id-ecPublicKey (1.2.840.10045.2.1), DER-encoded (with
	 * the tag).
	 */
	static const unsigned char OID_ECPUBKEY[] = {
		0x06, 0x07, 0x2a, 0x86, 0x48, 0xce, 0x3d, 0x02, 0x01
	};

	size_t len_version, len_privateKeyAlgorithm, len_privateKeyValue;
	size_t len_privateKey, len_seq;
	const unsigned char *oid;

	oid = FUNC2(sk->curve);
	if (oid == NULL) {
		return 0;
	}
	len_version = 3;
	len_privateKeyAlgorithm = 2 + sizeof OID_ECPUBKEY + 2 + oid[0];
	len_privateKeyValue = FUNC1(NULL, sk, pk, 0);
	len_privateKey = 1 + FUNC3(len_privateKeyValue)
		+ len_privateKeyValue;
	len_seq = len_version + len_privateKeyAlgorithm + len_privateKey;

	if (dest == NULL) {
		return 1 + FUNC3(len_seq) + len_seq;
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
		*buf ++ = 0x00;

		/* privateKeyAlgorithm */
		*buf ++ = 0x30;
		*buf ++ = (sizeof OID_ECPUBKEY) + 2 + oid[0];
		FUNC4(buf, OID_ECPUBKEY, sizeof OID_ECPUBKEY);
		buf += sizeof OID_ECPUBKEY;
		*buf ++ = 0x06;
		FUNC4(buf, oid, 1 + oid[0]);
		buf += 1 + oid[0];

		/* privateKey */
		*buf ++ = 0x04;
		buf += FUNC0(buf, len_privateKeyValue);
		FUNC1(buf, sk, pk, 0);

		return 1 + lenlen + len_seq;
	}
}