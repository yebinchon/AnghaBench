#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct eventfd_ctx {TYPE_1__ wqh; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eventfd_ctx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC6(struct eventfd_ctx *ctx, wait_queue_t *wait,
				  __u64 *cnt)
{
	unsigned long flags;

	FUNC2(&ctx->wqh.lock, flags);
	FUNC1(ctx, cnt);
	FUNC0(&ctx->wqh, wait);
	if (*cnt != 0 && FUNC4(&ctx->wqh))
		FUNC5(&ctx->wqh, POLLOUT);
	FUNC3(&ctx->wqh.lock, flags);

	return *cnt != 0 ? 0 : -EAGAIN;
}