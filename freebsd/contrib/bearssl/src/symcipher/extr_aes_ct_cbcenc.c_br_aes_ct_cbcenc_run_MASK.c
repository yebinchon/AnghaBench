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
typedef  TYPE_1__ br_aes_ct_cbcenc_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 

void
FUNC5(const br_aes_ct_cbcenc_keys *ctx,
	void *iv, void *data, size_t len)
{
	unsigned char *buf, *ivbuf;
	uint32_t q[8];
	uint32_t iv0, iv1, iv2, iv3;
	uint32_t sk_exp[120];

	q[1] = 0;
	q[3] = 0;
	q[5] = 0;
	q[7] = 0;
	FUNC2(sk_exp, ctx->num_rounds, ctx->skey);
	ivbuf = iv;
	iv0 = FUNC3(ivbuf);
	iv1 = FUNC3(ivbuf + 4);
	iv2 = FUNC3(ivbuf + 8);
	iv3 = FUNC3(ivbuf + 12);
	buf = data;
	while (len > 0) {
		q[0] = iv0 ^ FUNC3(buf);
		q[2] = iv1 ^ FUNC3(buf + 4);
		q[4] = iv2 ^ FUNC3(buf + 8);
		q[6] = iv3 ^ FUNC3(buf + 12);
		FUNC1(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC1(q);
		iv0 = q[0];
		iv1 = q[2];
		iv2 = q[4];
		iv3 = q[6];
		FUNC4(buf, iv0);
		FUNC4(buf + 4, iv1);
		FUNC4(buf + 8, iv2);
		FUNC4(buf + 12, iv3);
		buf += 16;
		len -= 16;
	}
	FUNC4(ivbuf, iv0);
	FUNC4(ivbuf + 4, iv1);
	FUNC4(ivbuf + 8, iv2);
	FUNC4(ivbuf + 12, iv3);
}