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
typedef  int uint64_t ;
struct TYPE_3__ {int j0_2; int jc; unsigned char* y; scalar_t__ count_ctr; scalar_t__ count_aad; int /*<<< orphan*/  j0_1; int /*<<< orphan*/  h; int /*<<< orphan*/  (* gh ) (unsigned char*,int /*<<< orphan*/ ,unsigned char*,int) ;} ;
typedef  TYPE_1__ br_gcm_context ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,unsigned char*,int) ; 

void
FUNC6(br_gcm_context *ctx, const void *iv, size_t len)
{
	/*
	 * If the provided nonce is 12 bytes, then this is the initial
	 * IV for CTR mode; it will be used with a counter that starts
	 * at 2 (value 1 is for encrypting the GHASH output into the tag).
	 *
	 * If the provided nonce has any other length, then it is hashed
	 * (with GHASH) into a 16-byte value that will be the IV for CTR
	 * (both 12-byte IV and 32-bit counter).
	 */
	if (len == 12) {
		FUNC2(ctx->j0_1, iv, 12);
		ctx->j0_2 = 1;
	} else {
		unsigned char ty[16], tmp[16];

		FUNC3(ty, 0, sizeof ty);
		ctx->gh(ty, ctx->h, iv, len);
		FUNC3(tmp, 0, 8);
		FUNC1(tmp + 8, (uint64_t)len << 3);
		ctx->gh(ty, ctx->h, tmp, 16);
		FUNC2(ctx->j0_1, ty, 12);
		ctx->j0_2 = FUNC0(ty + 12);
	}
	ctx->jc = ctx->j0_2 + 1;
	FUNC3(ctx->y, 0, sizeof ctx->y);
	ctx->count_aad = 0;
	ctx->count_ctr = 0;
}