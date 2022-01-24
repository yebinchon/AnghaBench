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
struct kioctx {int /*<<< orphan*/  wait; scalar_t__ dead; int /*<<< orphan*/  reqs_active; int /*<<< orphan*/  ctx_lock; } ;
struct kiocb {int /*<<< orphan*/ * ki_iovec; int /*<<< orphan*/  ki_inline_vec; int /*<<< orphan*/  (* ki_dtor ) (struct kiocb*) ;int /*<<< orphan*/ * ki_eventfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kiocb_cachep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kiocb*) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct kioctx *ctx, struct kiocb *req)
{
	FUNC0(&ctx->ctx_lock);

	if (req->ki_eventfd != NULL)
		FUNC1(req->ki_eventfd);
	if (req->ki_dtor)
		req->ki_dtor(req);
	if (req->ki_iovec != &req->ki_inline_vec)
		FUNC2(req->ki_iovec);
	FUNC3(kiocb_cachep, req);
	ctx->reqs_active--;

	if (FUNC5(!ctx->reqs_active && ctx->dead))
		FUNC6(&ctx->wait);
}