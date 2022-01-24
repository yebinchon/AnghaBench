#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * rp; int /*<<< orphan*/ * dp; } ;
struct TYPE_6__ {void (* append_dn ) (void*,void const*,size_t) ;TYPE_3__ cpu; int /*<<< orphan*/ * rp_stack; int /*<<< orphan*/ * dp_stack; void* append_dn_ctx; } ;
typedef  TYPE_1__ br_x509_decoder_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(br_x509_decoder_context *ctx,
	void (*append_dn)(void *ctx, const void *buf, size_t len),
	void *append_dn_ctx)
{
	FUNC2(ctx, 0, sizeof *ctx);
	/* obsolete
	ctx->err = 0;
	ctx->hbuf = NULL;
	ctx->hlen = 0;
	*/
	ctx->append_dn = append_dn;
	ctx->append_dn_ctx = append_dn_ctx;
	ctx->cpu.dp = &ctx->dp_stack[0];
	ctx->cpu.rp = &ctx->rp_stack[0];
	FUNC0(&ctx->cpu);
	FUNC1(&ctx->cpu);
}