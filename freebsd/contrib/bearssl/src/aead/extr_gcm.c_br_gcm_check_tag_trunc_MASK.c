#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  br_gcm_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 

uint32_t
FUNC2(br_gcm_context *ctx, const void *tag, size_t len)
{
	unsigned char tmp[16];
	size_t u;
	int x;

	FUNC1(ctx, tmp);
	x = 0;
	for (u = 0; u < len; u ++) {
		x |= tmp[u] ^ ((const unsigned char *)tag)[u];
	}
	return FUNC0(x);
}