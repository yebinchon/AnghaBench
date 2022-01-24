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
struct work_struct {int dummy; } ;
struct kioctx {int /*<<< orphan*/  ctx_lock; } ;
struct kiocb {int /*<<< orphan*/ * ki_filp; int /*<<< orphan*/  ki_list; struct kioctx* ki_ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ fput_head ; 
 int /*<<< orphan*/  fput_lock ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct kiocb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct kioctx*,struct kiocb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct work_struct *data)
{
	FUNC8(&fput_lock);
	while (FUNC1(!FUNC3(&fput_head))) {
		struct kiocb *req = FUNC4(fput_head.next);
		struct kioctx *ctx = req->ki_ctx;

		FUNC2(&req->ki_list);
		FUNC9(&fput_lock);

		/* Complete the fput(s) */
		if (req->ki_filp != NULL)
			FUNC0(req->ki_filp);

		/* Link the iocb into the context's free list */
		FUNC5();
		FUNC8(&ctx->ctx_lock);
		FUNC7(ctx, req);
		/*
		 * at that point ctx might've been killed, but actual
		 * freeing is RCU'd
		 */
		FUNC9(&ctx->ctx_lock);
		FUNC6();

		FUNC8(&fput_lock);
	}
	FUNC9(&fput_lock);
}