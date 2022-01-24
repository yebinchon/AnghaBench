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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  num_rounds; int /*<<< orphan*/  skey; } ;
typedef  TYPE_1__ br_aes_ct_ctr_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 

uint32_t
FUNC7(const br_aes_ct_ctr_keys *ctx,
	const void *iv, uint32_t cc, void *data, size_t len)
{
	unsigned char *buf;
	const unsigned char *ivbuf;
	uint32_t iv0, iv1, iv2;
	uint32_t sk_exp[120];

	FUNC2(sk_exp, ctx->num_rounds, ctx->skey);
	ivbuf = iv;
	iv0 = FUNC3(ivbuf);
	iv1 = FUNC3(ivbuf + 4);
	iv2 = FUNC3(ivbuf + 8);
	buf = data;
	while (len > 0) {
		uint32_t q[8];
		unsigned char tmp[32];

		/*
		 * TODO: see if we can save on the first br_aes_ct_ortho()
		 * call, since iv0/iv1/iv2 are constant for the whole run.
		 */
		q[0] = q[1] = iv0;
		q[2] = q[3] = iv1;
		q[4] = q[5] = iv2;
		q[6] = FUNC5(cc);
		q[7] = FUNC5(cc + 1);
		FUNC1(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC1(q);
		FUNC4(tmp, q[0]);
		FUNC4(tmp + 4, q[2]);
		FUNC4(tmp + 8, q[4]);
		FUNC4(tmp + 12, q[6]);
		FUNC4(tmp + 16, q[1]);
		FUNC4(tmp + 20, q[3]);
		FUNC4(tmp + 24, q[5]);
		FUNC4(tmp + 28, q[7]);

		if (len <= 32) {
			FUNC6(buf, tmp, len);
			cc ++;
			if (len > 16) {
				cc ++;
			}
			break;
		}
		FUNC6(buf, tmp, 32);
		buf += 32;
		len -= 32;
		cc += 2;
	}
	return cc;
}