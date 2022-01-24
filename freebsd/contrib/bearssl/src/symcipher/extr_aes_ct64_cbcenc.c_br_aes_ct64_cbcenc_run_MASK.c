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
typedef  TYPE_1__ br_aes_ct64_cbcenc_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 

void
FUNC10(const br_aes_ct64_cbcenc_keys *ctx,
	void *iv, void *data, size_t len)
{
	unsigned char *buf;
	uint64_t sk_exp[120];
	uint32_t ivw[4];

	FUNC4(sk_exp, ctx->num_rounds, ctx->skey);
	FUNC7(ivw, 4, iv);
	buf = data;
	while (len > 0) {
		uint32_t w[4];
		uint64_t q[8];

		w[0] = ivw[0] ^ FUNC5(buf);
		w[1] = ivw[1] ^ FUNC5(buf + 4);
		w[2] = ivw[2] ^ FUNC5(buf + 8);
		w[3] = ivw[3] ^ FUNC5(buf + 12);
		FUNC1(&q[0], &q[4], w);
		FUNC3(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC3(q);
		FUNC2(w, q[0], q[4]);
		FUNC9(ivw, w, sizeof w);
		FUNC6(buf, w[0]);
		FUNC6(buf + 4, w[1]);
		FUNC6(buf + 8, w[2]);
		FUNC6(buf + 12, w[3]);
		buf += 16;
		len -= 16;
	}
	FUNC8(iv, ivw, 4);
}