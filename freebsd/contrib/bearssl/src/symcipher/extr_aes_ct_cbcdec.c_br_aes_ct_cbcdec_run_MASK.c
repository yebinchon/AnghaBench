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
typedef  TYPE_1__ br_aes_ct_cbcdec_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 

void
FUNC6(const br_aes_ct_cbcdec_keys *ctx,
	void *iv, void *data, size_t len)
{
	unsigned char *buf, *ivbuf;
	uint32_t iv0, iv1, iv2, iv3;
	uint32_t sk_exp[120];

	FUNC2(sk_exp, ctx->num_rounds, ctx->skey);
	ivbuf = iv;
	iv0 = FUNC3(ivbuf);
	iv1 = FUNC3(ivbuf + 4);
	iv2 = FUNC3(ivbuf + 8);
	iv3 = FUNC3(ivbuf + 12);
	buf = data;
	while (len > 0) {
		uint32_t q[8], sq[8];

		q[0] = FUNC3(buf);
		q[2] = FUNC3(buf + 4);
		q[4] = FUNC3(buf + 8);
		q[6] = FUNC3(buf + 12);
		if (len >= 32) {
			q[1] = FUNC3(buf + 16);
			q[3] = FUNC3(buf + 20);
			q[5] = FUNC3(buf + 24);
			q[7] = FUNC3(buf + 28);
		} else {
			q[1] = 0;
			q[3] = 0;
			q[5] = 0;
			q[7] = 0;
		}
		FUNC5(sq, q, sizeof q);
		FUNC1(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC1(q);
		FUNC4(buf, q[0] ^ iv0);
		FUNC4(buf + 4, q[2] ^ iv1);
		FUNC4(buf + 8, q[4] ^ iv2);
		FUNC4(buf + 12, q[6] ^ iv3);
		if (len < 32) {
			iv0 = sq[0];
			iv1 = sq[2];
			iv2 = sq[4];
			iv3 = sq[6];
			break;
		}
		FUNC4(buf + 16, q[1] ^ sq[0]);
		FUNC4(buf + 20, q[3] ^ sq[2]);
		FUNC4(buf + 24, q[5] ^ sq[4]);
		FUNC4(buf + 28, q[7] ^ sq[6]);
		iv0 = sq[1];
		iv1 = sq[3];
		iv2 = sq[5];
		iv3 = sq[7];
		buf += 32;
		len -= 32;
	}
	FUNC4(ivbuf, iv0);
	FUNC4(ivbuf + 4, iv1);
	FUNC4(ivbuf + 8, iv2);
	FUNC4(ivbuf + 12, iv3);
}