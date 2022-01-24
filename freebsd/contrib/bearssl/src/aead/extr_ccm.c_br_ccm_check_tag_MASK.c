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
typedef  unsigned char uint32_t ;
typedef  int /*<<< orphan*/  br_ccm_context ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned char) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 

uint32_t
FUNC2(br_ccm_context *ctx, const void *tag)
{
	unsigned char tmp[16];
	size_t u, tag_len;
	uint32_t z;

	tag_len = FUNC1(ctx, tmp);
	z = 0;
	for (u = 0; u < tag_len; u ++) {
		z |= tmp[u] ^ ((const unsigned char *)tag)[u];
	}
	return FUNC0(z);
}