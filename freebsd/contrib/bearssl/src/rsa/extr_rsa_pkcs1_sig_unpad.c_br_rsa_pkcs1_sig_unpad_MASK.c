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
 scalar_t__ FUNC0 (unsigned char const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 

uint32_t
FUNC3(const unsigned char *sig, size_t sig_len,
	const unsigned char *hash_oid, size_t hash_len,
	unsigned char *hash_out)
{
	static const unsigned char pad1[] = {
		0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	};

	unsigned char pad2[43];
	size_t u, x2, x3, pad_len, zlen;

	if (sig_len < 11) {
		return 0;
	}

	/*
	 * Expected format:
	 *  00 01 FF ... FF 00 30 x1 30 x2 06 x3 OID [ 05 00 ] 04 x4 HASH
	 *
	 * with the following rules:
	 *
	 *  -- Total length is that of the modulus and the signature
	 *     (this was already verified by br_rsa_i31_public()).
	 *
	 *  -- There are at least eight bytes of value 0xFF.
	 *
	 *  -- x4 is equal to the hash length (hash_len).
	 *
	 *  -- x3 is equal to the encoded OID value length (so x3 is the
	 *     first byte of hash_oid[]).
	 *
	 *  -- If the "05 00" is present, then x2 == x3 + 4; otherwise,
	 *     x2 == x3 + 2.
	 *
	 *  -- x1 == x2 + x4 + 4.
	 *
	 * So the total length after the last "FF" is either x3 + x4 + 11
	 * (with the "05 00") or x3 + x4 + 9 (without the "05 00").
	 */

	/*
	 * Check the "00 01 FF .. FF 00" with at least eight 0xFF bytes.
	 * The comparison is valid because we made sure that the signature
	 * is at least 11 bytes long.
	 */
	if (FUNC0(sig, pad1, sizeof pad1) != 0) {
		return 0;
	}
	for (u = sizeof pad1; u < sig_len; u ++) {
		if (sig[u] != 0xFF) {
			break;
		}
	}

	/*
	 * Remaining length is sig_len - u bytes (including the 00 just
	 * after the last FF). This must be equal to one of the two
	 * possible values (depending on whether the "05 00" sequence is
	 * present or not).
	 */
	if (hash_oid == NULL) {
		if (sig_len - u != hash_len + 1 || sig[u] != 0x00) {
			return 0;
		}
	} else {
		x3 = hash_oid[0];
		pad_len = x3 + 9;
		FUNC2(pad2, 0, pad_len);
		zlen = sig_len - u - hash_len;
		if (zlen == pad_len) {
			x2 = x3 + 2;
		} else if (zlen == pad_len + 2) {
			x2 = x3 + 4;
			pad_len = zlen;
			pad2[pad_len - 4] = 0x05;
		} else {
			return 0;
		}
		pad2[1] = 0x30;
		pad2[2] = x2 + hash_len + 4;
		pad2[3] = 0x30;
		pad2[4] = x2;
		pad2[5] = 0x06;
		FUNC1(pad2 + 6, hash_oid, x3 + 1);
		pad2[pad_len - 2] = 0x04;
		pad2[pad_len - 1] = hash_len;
		if (FUNC0(pad2, sig + u, pad_len) != 0) {
			return 0;
		}
	}
	FUNC1(hash_out, sig + sig_len - hash_len, hash_len);
	return 1;
}