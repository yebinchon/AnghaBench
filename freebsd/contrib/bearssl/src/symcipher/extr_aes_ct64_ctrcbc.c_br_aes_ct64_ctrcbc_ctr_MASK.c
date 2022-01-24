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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  num_rounds; int /*<<< orphan*/  skey; } ;
typedef  TYPE_1__ br_aes_ct64_ctrcbc_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int*,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,int) ; 

void
FUNC11(const br_aes_ct64_ctrcbc_keys *ctx,
	void *ctr, void *data, size_t len)
{
	unsigned char *buf;
	unsigned char *ivbuf;
	uint32_t iv0, iv1, iv2, iv3;
	uint64_t sk_exp[120];

	FUNC4(sk_exp, ctx->num_rounds, ctx->skey);

	/*
	 * We keep the counter as four 32-bit values, with big-endian
	 * convention, because that's what is expected for purposes of
	 * incrementing the counter value.
	 */
	ivbuf = ctr;
	iv0 = FUNC5(ivbuf +  0);
	iv1 = FUNC5(ivbuf +  4);
	iv2 = FUNC5(ivbuf +  8);
	iv3 = FUNC5(ivbuf + 12);

	buf = data;
	while (len > 0) {
		uint64_t q[8];
		uint32_t w[16];
		unsigned char tmp[64];
		int i, j;

		/*
		 * The bitslice implementation expects values in
		 * little-endian convention, so we have to byteswap them.
		 */
		j = (len >= 64) ? 16 : (int)(len >> 2);
		for (i = 0; i < j; i += 4) {
			uint32_t carry;

			w[i + 0] = FUNC8(iv0);
			w[i + 1] = FUNC8(iv1);
			w[i + 2] = FUNC8(iv2);
			w[i + 3] = FUNC8(iv3);
			iv3 ++;
			carry = ~(iv3 | -iv3) >> 31;
			iv2 += carry;
			carry &= -(~(iv2 | -iv2) >> 31);
			iv1 += carry;
			carry &= -(~(iv1 | -iv1) >> 31);
			iv0 += carry;
		}
		FUNC9(w + i, 0, (16 - i) * sizeof(uint32_t));

		for (i = 0; i < 4; i ++) {
			FUNC1(
				&q[i], &q[i + 4], w + (i << 2));
		}
		FUNC3(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC3(q);
		for (i = 0; i < 4; i ++) {
			FUNC2(
				w + (i << 2), q[i], q[i + 4]);
		}

		FUNC7(tmp, w, 16);
		if (len <= 64) {
			FUNC10(buf, tmp, len);
			break;
		}
		FUNC10(buf, tmp, 64);
		buf += 64;
		len -= 64;
	}
	FUNC6(ivbuf +  0, iv0);
	FUNC6(ivbuf +  4, iv1);
	FUNC6(ivbuf +  8, iv2);
	FUNC6(ivbuf + 12, iv3);
}