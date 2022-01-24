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
 int FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,int) ; 

void
FUNC12(const br_aes_ct64_ctrcbc_keys *ctx,
	void *ctr, void *cbcmac, void *data, size_t len)
{
	unsigned char *buf;
	unsigned char *ivbuf;
	uint32_t iv0, iv1, iv2, iv3;
	uint32_t cm0, cm1, cm2, cm3;
	uint64_t sk_exp[120];
	uint64_t q[8];

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

	/*
	 * The current CBC-MAC value is kept in little-endian convention.
	 */
	cm0 = FUNC6((unsigned char *)cbcmac +  0);
	cm1 = FUNC6((unsigned char *)cbcmac +  4);
	cm2 = FUNC6((unsigned char *)cbcmac +  8);
	cm3 = FUNC6((unsigned char *)cbcmac + 12);

	buf = data;
	FUNC10(q, 0, sizeof q);
	while (len > 0) {
		uint32_t w[8], carry;
		unsigned char tmp[16];

		/*
		 * The bitslice implementation expects values in
		 * little-endian convention, so we have to byteswap them.
		 */
		w[0] = FUNC9(iv0);
		w[1] = FUNC9(iv1);
		w[2] = FUNC9(iv2);
		w[3] = FUNC9(iv3);
		iv3 ++;
		carry = ~(iv3 | -iv3) >> 31;
		iv2 += carry;
		carry &= -(~(iv2 | -iv2) >> 31);
		iv1 += carry;
		carry &= -(~(iv1 | -iv1) >> 31);
		iv0 += carry;

		/*
		 * The block for CBC-MAC.
		 */
		w[4] = cm0 ^ FUNC6(buf +  0);
		w[5] = cm1 ^ FUNC6(buf +  4);
		w[6] = cm2 ^ FUNC6(buf +  8);
		w[7] = cm3 ^ FUNC6(buf + 12);

		FUNC1(&q[0], &q[4], w);
		FUNC1(&q[1], &q[5], w + 4);
		FUNC3(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC3(q);
		FUNC2(w, q[0], q[4]);
		FUNC2(w + 4, q[1], q[5]);

		FUNC8(tmp +  0, w[0]);
		FUNC8(tmp +  4, w[1]);
		FUNC8(tmp +  8, w[2]);
		FUNC8(tmp + 12, w[3]);
		FUNC11(buf, tmp, 16);
		cm0 = w[4];
		cm1 = w[5];
		cm2 = w[6];
		cm3 = w[7];
		buf += 16;
		len -= 16;
	}

	FUNC7(ivbuf +  0, iv0);
	FUNC7(ivbuf +  4, iv1);
	FUNC7(ivbuf +  8, iv2);
	FUNC7(ivbuf + 12, iv3);
	FUNC8((unsigned char *)cbcmac +  0, cm0);
	FUNC8((unsigned char *)cbcmac +  4, cm1);
	FUNC8((unsigned char *)cbcmac +  8, cm2);
	FUNC8((unsigned char *)cbcmac + 12, cm3);
}