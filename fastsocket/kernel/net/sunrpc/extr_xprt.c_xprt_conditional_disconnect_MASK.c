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
struct rpc_xprt {unsigned int connect_cookie; int /*<<< orphan*/  transport_lock; int /*<<< orphan*/  task_cleanup; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  XPRT_CLOSE_WAIT ; 
 int /*<<< orphan*/  XPRT_CLOSING ; 
 int /*<<< orphan*/  XPRT_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpciod_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 

void FUNC8(struct rpc_xprt *xprt, unsigned int cookie)
{
	/* Don't race with the test_bit() in xprt_clear_locked() */
	FUNC2(&xprt->transport_lock);
	if (cookie != xprt->connect_cookie)
		goto out;
	if (FUNC5(XPRT_CLOSING, &xprt->state) || !FUNC6(xprt))
		goto out;
	FUNC1(XPRT_CLOSE_WAIT, &xprt->state);
	/* Try to schedule an autoclose RPC call */
	if (FUNC4(XPRT_LOCKED, &xprt->state) == 0)
		FUNC0(rpciod_workqueue, &xprt->task_cleanup);
	FUNC7(xprt, -EAGAIN);
out:
	FUNC3(&xprt->transport_lock);
}