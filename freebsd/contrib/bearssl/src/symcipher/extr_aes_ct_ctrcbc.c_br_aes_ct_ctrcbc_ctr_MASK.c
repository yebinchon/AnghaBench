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
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int) ; 

void
FUNC8(const br_aes_ct_ctrcbc_keys *ctx,
	void *ctr, void *data, size_t len)
{
	unsigned char *buf;
	unsigned char *ivbuf;
	uint32_t iv0, iv1, iv2, iv3;
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

	buf = data;
	while (len > 0) {
		uint32_t q[8], carry;
		unsigned char tmp[32];

		/*
		 * The bitslice implementation expects values in
		 * little-endian convention, so we have to byteswap them.
		 */
		q[0] = FUNC6(iv0);
		q[2] = FUNC6(iv1);
		q[4] = FUNC6(iv2);
		q[6] = FUNC6(iv3);
		iv3 ++;
		carry = ~(iv3 | -iv3) >> 31;
		iv2 += carry;
		carry &= -(~(iv2 | -iv2) >> 31);
		iv1 += carry;
		carry &= -(~(iv1 | -iv1) >> 31);
		iv0 += carry;
		q[1] = FUNC6(iv0);
		q[3] = FUNC6(iv1);
		q[5] = FUNC6(iv2);
		q[7] = FUNC6(iv3);
		if (len > 16) {
			iv3 ++;
			carry = ~(iv3 | -iv3) >> 31;
			iv2 += carry;
			carry &= -(~(iv2 | -iv2) >> 31);
			iv1 += carry;
			carry &= -(~(iv1 | -iv1) >> 31);
			iv0 += carry;
		}

		FUNC1(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC1(q);

		FUNC5(tmp, q[0]);
		FUNC5(tmp + 4, q[2]);
		FUNC5(tmp + 8, q[4]);
		FUNC5(tmp + 12, q[6]);
		FUNC5(tmp + 16, q[1]);
		FUNC5(tmp + 20, q[3]);
		FUNC5(tmp + 24, q[5]);
		FUNC5(tmp + 28, q[7]);

		if (len <= 32) {
			FUNC7(buf, tmp, len);
			break;
		}
		FUNC7(buf, tmp, 32);
		buf += 32;
		len -= 32;
	}
	FUNC4(ivbuf +  0, iv0);
	FUNC4(ivbuf +  4, iv1);
	FUNC4(ivbuf +  8, iv2);
	FUNC4(ivbuf + 12, iv3);
}