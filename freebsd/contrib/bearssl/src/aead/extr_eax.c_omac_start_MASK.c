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
struct TYPE_3__ {unsigned int* cbcmac; unsigned int* buf; int ptr; } ;
typedef  TYPE_1__ br_eax_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(br_eax_context *ctx, unsigned val)
{
	FUNC0(ctx->cbcmac, 0, sizeof ctx->cbcmac);
	FUNC0(ctx->buf, 0, sizeof ctx->buf);
	ctx->buf[15] = val;
	ctx->ptr = 16;
}