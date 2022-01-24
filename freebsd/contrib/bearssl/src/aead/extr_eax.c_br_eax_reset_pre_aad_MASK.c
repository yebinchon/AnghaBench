#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * st; } ;
typedef  TYPE_1__ br_eax_state ;
struct TYPE_9__ {int* head; int /*<<< orphan*/  ctr; scalar_t__ ptr; int /*<<< orphan*/  cbcmac; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_2__ br_eax_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC4(br_eax_context *ctx, const br_eax_state *st,
	const void *nonce, size_t len)
{
	if (len == 0) {
		FUNC3(ctx, 0);
	} else {
		FUNC2(ctx->cbcmac, st->st[0], sizeof ctx->cbcmac);
		ctx->ptr = 0;
		FUNC0(ctx, nonce, len);
	}
	FUNC1(ctx);
	FUNC2(ctx->nonce, ctx->cbcmac, sizeof ctx->cbcmac);

	FUNC2(ctx->cbcmac, st->st[1], sizeof ctx->cbcmac);
	ctx->ptr = 0;

	FUNC2(ctx->ctr, st->st[2], sizeof ctx->ctr);

	/*
	 * We use ctx->head[0] as a flag to indicate that we use a
	 * a recorded state, with ctx->ctr containing the preprocessed
	 * first block for OMAC^2.
	 */
	ctx->head[0] = 1;
}