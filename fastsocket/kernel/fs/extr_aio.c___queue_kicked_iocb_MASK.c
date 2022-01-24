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
struct kioctx {int /*<<< orphan*/  run_list; int /*<<< orphan*/  ctx_lock; } ;
struct kiocb {int /*<<< orphan*/  ki_run_list; struct kioctx* ki_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct kiocb *iocb)
{
	struct kioctx *ctx = iocb->ki_ctx;

	FUNC0(&ctx->ctx_lock);

	if (FUNC2(&iocb->ki_run_list)) {
		FUNC1(&iocb->ki_run_list,
			&ctx->run_list);
		return 1;
	}
	return 0;
}