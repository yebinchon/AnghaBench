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
 int FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 

void
FUNC5(const br_aes_ct_ctrcbc_keys *ctx,
	void *cbcmac, const void *data, size_t len)
{
	const unsigned char *buf;
	uint32_t cm0, cm1, cm2, cm3;
	uint32_t q[8];
	uint32_t sk_exp[120];

	FUNC2(sk_exp, ctx->num_rounds, ctx->skey);

	buf = data;
	cm0 = FUNC3((unsigned char *)cbcmac +  0);
	cm1 = FUNC3((unsigned char *)cbcmac +  4);
	cm2 = FUNC3((unsigned char *)cbcmac +  8);
	cm3 = FUNC3((unsigned char *)cbcmac + 12);
	q[1] = 0;
	q[3] = 0;
	q[5] = 0;
	q[7] = 0;

	while (len > 0) {
		q[0] = cm0 ^ FUNC3(buf +  0);
		q[2] = cm1 ^ FUNC3(buf +  4);
		q[4] = cm2 ^ FUNC3(buf +  8);
		q[6] = cm3 ^ FUNC3(buf + 12);

		FUNC1(q);
		FUNC0(ctx->num_rounds, sk_exp, q);
		FUNC1(q);

		cm0 = q[0];
		cm1 = q[2];
		cm2 = q[4];
		cm3 = q[6];
		buf += 16;
		len -= 16;
	}

	FUNC4((unsigned char *)cbcmac +  0, cm0);
	FUNC4((unsigned char *)cbcmac +  4, cm1);
	FUNC4((unsigned char *)cbcmac +  8, cm2);
	FUNC4((unsigned char *)cbcmac + 12, cm3);
}