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
struct TYPE_3__ {int /*<<< orphan*/  num_rounds; int /*<<< orphan*/  skey; } ;
typedef  TYPE_1__ br_aes_ct_ctrcbc_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char*) ; 
 int FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 

void
FUNC9(const br_aes_ct_ctrcbc_keys *ctx,
	void *ctr, void *cbcmac, void *data, size_t len)
{
	unsigned char *buf;
	unsigned char *ivbuf;
	uint32_t iv0, iv1, iv2, iv3;
	uint32_t cm0, cm1, cm2, cm3;
	uint32_t sk_exp[120];

	FUNC2(sk_exp, ctx->num_rounds, ctx->skey);

	/*
	 * We keep the counter as four 32-bit values, with big-endian
	 * convention, because that's what is expected for purposes of
	 * incrementing the counter value.
	 */
	ivbuf = ctr;
	iv0 = FUNC3(ivbuf +  0);
	iv1 = FUNC3(ivbuf +  4);
	iv2 = FUNC3(ivbuf +  8);
	iv3 = FUNC3(ivbuf + 12);

	/*
	 * The current CBC-MAC value is kept in little-endian convention.
	 */
	cm0 = FUNC4((unsigned char *)cbcmac +  0);
	cm1 = FUNC4((unsigned char *)cbcmac +  4);
	cm2 = FUNC4((unsigned char *)cbcmac +  8);
	cm3 = FUNC4((unsigned char *)cbcmac + 12);

	buf = data;
	while (len > 0) {
		uint32_t q[8], carry;
		unsigned char tmp[16];

		/*
		 * The bitslice implementation expects values in
		 * little-endian convention, so we have to byteswap them.
		 */
		q[0] = FUNC7(iv0);
		q[2] = FUNC7(iv1);
		q[4] = FUNC7(iv2);
		q[6] = FUNC7(iv3);
		iv3 ++;
		carry = ~(iv3 | -iv3) >> 31;
		iv2 += carry;
		carry &= -(~(iv2 | -iv2) >> 31);
		iv1 += carry;
		carry &= -(~(iv1 | -iv1) >> 31);
		iv0 += carry;

		/*
		 * The odd values are used for CBC-MAC.
		 */
		q[1] = cm0 ^ FUNC4(buf +  0);
		q[3] = cm1 ^ FUNC4(buf +  4);
		q[5] = cm2 ^ FUNC4(buf +  8);
		q[7] = cm3 ^ FUNC4(buf + 12);

		FUNC1(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC1(q);

		FUNC6(tmp +  0, q[0]);
		FUNC6(tmp +  4, q[2]);
		FUNC6(tmp +  8, q[4]);
		FUNC6(tmp + 12, q[6]);
		FUNC8(buf, tmp, 16);
		cm0 = q[1];
		cm1 = q[3];
		cm2 = q[5];
		cm3 = q[7];
		buf += 16;
		len -= 16;
	}

	FUNC5(ivbuf +  0, iv0);
	FUNC5(ivbuf +  4, iv1);
	FUNC5(ivbuf +  8, iv2);
	FUNC5(ivbuf + 12, iv3);
	FUNC6((unsigned char *)cbcmac +  0, cm0);
	FUNC6((unsigned char *)cbcmac +  4, cm1);
	FUNC6((unsigned char *)cbcmac +  8, cm2);
	FUNC6((unsigned char *)cbcmac + 12, cm3);
}