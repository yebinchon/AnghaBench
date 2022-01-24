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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  (* br_chacha20_run ) (void const*,void const*,int,void*,size_t) ;

/* Variables and functions */
 int /*<<< orphan*/  P0I ; 
 int /*<<< orphan*/  P1305 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int) ; 

void
FUNC9(const void *key, const void *iv,
	void *data, size_t len, const void *aad, size_t aad_len,
	void *tag, br_chacha20_run ichacha, int encrypt)
{
	unsigned char pkey[32], foot[16];
	uint16_t t[10], r[10], acc[10];

	/*
	 * Compute the MAC key. The 'r' value is the first 16 bytes of
	 * pkey[].
	 */
	FUNC7(pkey, 0, sizeof pkey);
	ichacha(key, iv, 0, pkey, sizeof pkey);

	/*
	 * If encrypting, ChaCha20 must run first, followed by Poly1305.
	 * When decrypting, the operations are reversed.
	 */
	if (encrypt) {
		ichacha(key, iv, 1, data, len);
	}

	/*
	 * Run Poly1305. We must process the AAD, then ciphertext, then
	 * the footer (with the lengths). Note that the AAD and ciphertext
	 * are meant to be padded with zeros up to the next multiple of 16,
	 * and the length of the footer is 16 bytes as well.
	 */

	/*
	 * Apply the "clamping" operation on the encoded 'r' value.
	 */
	pkey[ 3] &= 0x0F;
	pkey[ 7] &= 0x0F;
	pkey[11] &= 0x0F;
	pkey[15] &= 0x0F;
	pkey[ 4] &= 0xFC;
	pkey[ 8] &= 0xFC;
	pkey[12] &= 0xFC;

	/*
	 * Decode the clamped 'r' value. Decoding should use little-endian
	 * so we must byteswap the value first.
	 */
	FUNC6(pkey);
	FUNC2(t, pkey, 16, P1305);

	/*
	 * Convert 'r' to Montgomery representation.
	 */
	FUNC4(r, t, R2, P1305, P0I);

	/*
	 * Accumulator is 0.
	 */
	FUNC5(acc, 0x8A);

	/*
	 * Process the additional authenticated data, ciphertext, and
	 * footer in due order.
	 */
	FUNC0(foot, (uint64_t)aad_len);
	FUNC0(foot + 8, (uint64_t)len);
	FUNC8(acc, r, aad, aad_len);
	FUNC8(acc, r, data, len);
	FUNC8(acc, r, foot, sizeof foot);

	/*
	 * Decode the value 's'. Again, a byteswap is needed.
	 */
	FUNC6(pkey + 16);
	FUNC2(t, pkey + 16, 16, P1305);

	/*
	 * Add the value 's' to the accumulator. That addition is done
	 * modulo 2^128, so we just ignore the carry.
	 */
	FUNC1(acc, t, 1);

	/*
	 * Encode the result (128 low bits) to the tag. Encoding should
	 * be little-endian.
	 */
	FUNC3(tag, 16, acc);
	FUNC6(tag);

	/*
	 * If decrypting, then ChaCha20 runs _after_ Poly1305.
	 */
	if (!encrypt) {
		ichacha(key, iv, 1, data, len);
	}
}