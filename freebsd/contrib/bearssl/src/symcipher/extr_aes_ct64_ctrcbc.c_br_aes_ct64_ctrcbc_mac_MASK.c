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
 int FUNC5 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC8(const br_aes_ct64_ctrcbc_keys *ctx,
	void *cbcmac, const void *data, size_t len)
{
	const unsigned char *buf;
	uint32_t cm0, cm1, cm2, cm3;
	uint64_t q[8];
	uint64_t sk_exp[120];

	FUNC4(sk_exp, ctx->num_rounds, ctx->skey);

	cm0 = FUNC5((unsigned char *)cbcmac +  0);
	cm1 = FUNC5((unsigned char *)cbcmac +  4);
	cm2 = FUNC5((unsigned char *)cbcmac +  8);
	cm3 = FUNC5((unsigned char *)cbcmac + 12);

	buf = data;
	FUNC7(q, 0, sizeof q);
	while (len > 0) {
		uint32_t w[4];

		w[0] = cm0 ^ FUNC5(buf +  0);
		w[1] = cm1 ^ FUNC5(buf +  4);
		w[2] = cm2 ^ FUNC5(buf +  8);
		w[3] = cm3 ^ FUNC5(buf + 12);

		FUNC1(&q[0], &q[4], w);
		FUNC3(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC3(q);
		FUNC2(w, q[0], q[4]);

		cm0 = w[0];
		cm1 = w[1];
		cm2 = w[2];
		cm3 = w[3];
		buf += 16;
		len -= 16;
	}

	FUNC6((unsigned char *)cbcmac +  0, cm0);
	FUNC6((unsigned char *)cbcmac +  4, cm1);
	FUNC6((unsigned char *)cbcmac +  8, cm2);
	FUNC6((unsigned char *)cbcmac + 12, cm3);
}