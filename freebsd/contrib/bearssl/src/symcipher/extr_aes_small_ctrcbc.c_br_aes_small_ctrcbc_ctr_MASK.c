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
struct TYPE_3__ {int /*<<< orphan*/  skey; int /*<<< orphan*/  num_rounds; } ;
typedef  TYPE_1__ br_aes_small_ctrcbc_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

void
FUNC4(const br_aes_small_ctrcbc_keys *ctx,
	void *ctr, void *data, size_t len)
{
	unsigned char *buf, *bctr;
	uint32_t cc0, cc1, cc2, cc3;

	buf = data;
	bctr = ctr;
	cc3 = FUNC1(bctr +  0);
	cc2 = FUNC1(bctr +  4);
	cc1 = FUNC1(bctr +  8);
	cc0 = FUNC1(bctr + 12);
	while (len > 0) {
		unsigned char tmp[16];
		uint32_t carry;

		FUNC2(tmp +  0, cc3);
		FUNC2(tmp +  4, cc2);
		FUNC2(tmp +  8, cc1);
		FUNC2(tmp + 12, cc0);
		FUNC0(ctx->num_rounds, ctx->skey, tmp);
		FUNC3(buf, tmp, 16);
		buf += 16;
		len -= 16;
		cc0 ++;
		carry = (~(cc0 | -cc0)) >> 31;
		cc1 += carry;
		carry &= (~(cc1 | -cc1)) >> 31;
		cc2 += carry;
		carry &= (~(cc2 | -cc2)) >> 31;
		cc3 += carry;
	}
	FUNC2(bctr +  0, cc3);
	FUNC2(bctr +  4, cc2);
	FUNC2(bctr +  8, cc1);
	FUNC2(bctr + 12, cc0);
}