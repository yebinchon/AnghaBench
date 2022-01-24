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
struct kioctx {int /*<<< orphan*/  ctx_lock; } ;
struct kiocb {struct kioctx* ki_ctx; } ;

/* Variables and functions */
 int FUNC0 (struct kioctx*,struct kiocb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct kiocb *req)
{
	struct kioctx *ctx = req->ki_ctx;
	int ret;
	FUNC1(&ctx->ctx_lock);
	ret = FUNC0(ctx, req);
	FUNC2(&ctx->ctx_lock);
	return ret;
}