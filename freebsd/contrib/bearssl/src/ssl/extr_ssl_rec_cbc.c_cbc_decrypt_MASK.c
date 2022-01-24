#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {TYPE_3__* vtable; } ;
struct TYPE_6__ {int mac_len; int /*<<< orphan*/  mac; int /*<<< orphan*/  seq; scalar_t__ explicit_IV; int /*<<< orphan*/  iv; TYPE_1__ bc; } ;
typedef  TYPE_2__ br_sslrec_in_cbc_context ;
typedef  int /*<<< orphan*/  br_hmac_context ;
struct TYPE_7__ {int block_size; int /*<<< orphan*/  (* run ) (TYPE_3__**,int /*<<< orphan*/ ,void*,int) ;} ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (unsigned char) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 unsigned char FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,int,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__**,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static unsigned char *
FUNC14(br_sslrec_in_cbc_context *cc,
	int record_type, unsigned version, void *data, size_t *data_len)
{
	/*
	 * We represent all lengths on 32-bit integers, because:
	 * -- SSL record lengths always fit in 32 bits;
	 * -- our constant-time primitives operate on 32-bit integers.
	 */
	unsigned char *buf;
	uint32_t u, v, len, blen, min_len, max_len;
	uint32_t good, pad_len, rot_count, len_withmac, len_nomac;
	unsigned char tmp1[64], tmp2[64];
	int i;
	br_hmac_context hc;

	buf = data;
	len = *data_len;
	blen = cc->bc.vtable->block_size;

	/*
	 * Decrypt data, and skip the explicit IV (if applicable). Note
	 * that the total length is supposed to have been verified by
	 * the caller. If there is an explicit IV, then we actually
	 * "decrypt" it using the implicit IV (from previous record),
	 * which is useless but harmless.
	 */
	cc->bc.vtable->run(&cc->bc.vtable, cc->iv, data, len);
	if (cc->explicit_IV) {
		buf += blen;
		len -= blen;
	}

	/*
	 * Compute minimum and maximum length of plaintext + MAC. These
	 * lengths can be inferred from the outside: they are not secret.
	 */
	min_len = (cc->mac_len + 256 < len) ? len - 256 : cc->mac_len;
	max_len = len - 1;

	/*
	 * Use the last decrypted byte to compute the actual payload
	 * length. Take care not to underflow (we use unsigned types).
	 */
	pad_len = buf[max_len];
	good = FUNC3(pad_len, (uint32_t)(max_len - min_len));
	len = FUNC5(good, (uint32_t)(max_len - pad_len), min_len);

	/*
	 * Check padding contents: all padding bytes must be equal to
	 * the value of pad_len.
	 */
	for (u = min_len; u < max_len; u ++) {
		good &= FUNC4(u, len) | FUNC0(buf[u], pad_len);
	}

	/*
	 * Extract the MAC value. This is done in one pass, but results
	 * in a "rotated" MAC value depending on where it actually
	 * occurs. The 'rot_count' value is set to the offset of the
	 * first MAC byte within tmp1[].
	 *
	 * min_len and max_len are also adjusted to the minimum and
	 * maximum lengths of the plaintext alone (without the MAC).
	 */
	len_withmac = (uint32_t)len;
	len_nomac = len_withmac - cc->mac_len;
	min_len -= cc->mac_len;
	rot_count = 0;
	FUNC12(tmp1, 0, cc->mac_len);
	v = 0;
	for (u = min_len; u < max_len; u ++) {
		tmp1[v] |= FUNC5(FUNC2(u, len_nomac) & FUNC4(u, len_withmac),
			buf[u], 0x00);
		rot_count = FUNC5(FUNC0(u, len_nomac), v, rot_count);
		if (++ v == cc->mac_len) {
			v = 0;
		}
	}
	max_len -= cc->mac_len;

	/*
	 * Rotate back the MAC value. The loop below does the constant-time
	 * rotation in time n*log n for a MAC output of length n. We assume
	 * that the MAC output length is no more than 64 bytes, so the
	 * rotation count fits on 6 bits.
	 */
	for (i = 5; i >= 0; i --) {
		uint32_t rc;

		rc = (uint32_t)1 << i;
		FUNC11(rot_count >> i, tmp1, cc->mac_len, rc);
		rot_count &= ~rc;
	}

	/*
	 * Recompute the HMAC value. The input is the concatenation of
	 * the sequence number (8 bytes), the record header (5 bytes),
	 * and the payload.
	 *
	 * At that point, min_len is the minimum plaintext length, but
	 * max_len still includes the MAC length.
	 */
	FUNC7(tmp2, cc->seq ++);
	tmp2[8] = (unsigned char)record_type;
	FUNC6(tmp2 + 9, version);
	FUNC6(tmp2 + 11, len_nomac);
	FUNC8(&hc, &cc->mac, cc->mac_len);
	FUNC10(&hc, tmp2, 13);
	FUNC9(&hc, buf, len_nomac, min_len, max_len, tmp2);

	/*
	 * Compare the extracted and recomputed MAC values.
	 */
	for (u = 0; u < cc->mac_len; u ++) {
		good &= FUNC1(tmp1[u] ^ tmp2[u]);
	}

	/*
	 * Check that the plaintext length is valid. The previous
	 * check was on the encrypted length, but the padding may have
	 * turned shorter than expected.
	 *
	 * Once this final test is done, the critical "constant-time"
	 * section ends and we can make conditional jumps again.
	 */
	good &= FUNC3(len_nomac, 16384);

	if (!good) {
		return 0;
	}
	*data_len = len_nomac;
	return buf;
}