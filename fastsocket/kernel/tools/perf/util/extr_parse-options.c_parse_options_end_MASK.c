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
struct parse_opt_ctx_t {int cpidx; int argc; int /*<<< orphan*/ ** out; int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct parse_opt_ctx_t *ctx)
{
	FUNC0(ctx->out + ctx->cpidx, ctx->argv, ctx->argc * sizeof(*ctx->out));
	ctx->out[ctx->cpidx + ctx->argc] = NULL;
	return ctx->cpidx + ctx->argc;
}