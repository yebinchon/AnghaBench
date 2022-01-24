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
struct TYPE_3__ {int /*<<< orphan*/  skey; int /*<<< orphan*/  num_rounds; } ;
typedef  TYPE_1__ br_aes_big_ctr_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

uint32_t
FUNC4(const br_aes_big_ctr_keys *ctx,
	const void *iv, uint32_t cc, void *data, size_t len)
{
	unsigned char *buf;

	buf = data;
	while (len > 0) {
		unsigned char tmp[16];

		FUNC2(tmp, iv, 12);
		FUNC1(tmp + 12, cc ++);
		FUNC0(ctx->num_rounds, ctx->skey, tmp);
		if (len <= 16) {
			FUNC3(buf, tmp, len);
			break;
		}
		FUNC3(buf, tmp, 16);
		buf += 16;
		len -= 16;
	}
	return cc;
}