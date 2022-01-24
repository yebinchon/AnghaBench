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
typedef  TYPE_1__ br_aes_ct64_ctr_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,void const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int*,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int) ; 

uint32_t
FUNC10(const br_aes_ct64_ctr_keys *ctx,
	const void *iv, uint32_t cc, void *data, size_t len)
{
	unsigned char *buf;
	uint32_t ivw[16];
	uint64_t sk_exp[120];

	FUNC4(sk_exp, ctx->num_rounds, ctx->skey);
	FUNC5(ivw, 3, iv);
	FUNC8(ivw + 4, ivw, 3 * sizeof(uint32_t));
	FUNC8(ivw + 8, ivw, 3 * sizeof(uint32_t));
	FUNC8(ivw + 12, ivw, 3 * sizeof(uint32_t));
	buf = data;
	while (len > 0) {
		uint64_t q[8];
		uint32_t w[16];
		unsigned char tmp[64];
		int i;

		/*
		 * TODO: see if we can save on the first br_aes_ct64_ortho()
		 * call, since iv0/iv1/iv2 are constant for the whole run.
		 */
		FUNC8(w, ivw, sizeof ivw);
		w[3] = FUNC7(cc);
		w[7] = FUNC7(cc + 1);
		w[11] = FUNC7(cc + 2);
		w[15] = FUNC7(cc + 3);
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
		FUNC6(tmp, w, 16);
		if (len <= 64) {
			FUNC9(buf, tmp, len);
			cc += (uint32_t)len >> 4;
			break;
		}
		FUNC9(buf, tmp, 64);
		buf += 64;
		len -= 64;
		cc += 4;
	}
	return cc;
}