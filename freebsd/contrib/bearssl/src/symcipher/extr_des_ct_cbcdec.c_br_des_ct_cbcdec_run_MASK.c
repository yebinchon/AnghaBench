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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  num_rounds; int /*<<< orphan*/  skey; } ;
typedef  TYPE_1__ br_des_ct_cbcdec_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 

void
FUNC3(const br_des_ct_cbcdec_keys *ctx,
	void *iv, void *data, size_t len)
{
	unsigned char *buf, *ivbuf;
	uint32_t sk_exp[288];

	FUNC1(sk_exp, ctx->num_rounds, ctx->skey);
	ivbuf = iv;
	buf = data;
	while (len > 0) {
		unsigned char tmp[8];
		int i;

		FUNC2(tmp, buf, 8);
		FUNC0(ctx->num_rounds, sk_exp, buf);
		for (i = 0; i < 8; i ++) {
			buf[i] ^= ivbuf[i];
		}
		FUNC2(ivbuf, tmp, 8);
		buf += 8;
		len -= 8;
	}
}