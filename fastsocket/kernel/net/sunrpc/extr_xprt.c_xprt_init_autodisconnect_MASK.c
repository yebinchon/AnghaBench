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
struct rpc_xprt {int /*<<< orphan*/  transport_lock; int /*<<< orphan*/  task_cleanup; int /*<<< orphan*/  state; int /*<<< orphan*/  recv; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_CONNECTION_CLOSE ; 
 int /*<<< orphan*/  XPRT_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpciod_workqueue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(unsigned long data)
{
	struct rpc_xprt *xprt = (struct rpc_xprt *)data;

	FUNC3(&xprt->transport_lock);
	if (!FUNC0(&xprt->recv))
		goto out_abort;
	if (FUNC5(XPRT_LOCKED, &xprt->state))
		goto out_abort;
	FUNC4(&xprt->transport_lock);
	FUNC2(XPRT_CONNECTION_CLOSE, &xprt->state);
	FUNC1(rpciod_workqueue, &xprt->task_cleanup);
	return;
out_abort:
	FUNC4(&xprt->transport_lock);
}