#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ rep_connected; } ;
struct rpcrdma_xprt {int /*<<< orphan*/  rdma_connect; TYPE_1__ rx_ep; } ;
struct rpc_xprt {int reestablish_timeout; } ;
struct rpc_task {scalar_t__ tk_xprt; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct rpcrdma_xprt* FUNC2 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct rpc_task *task)
{
	struct rpc_xprt *xprt = (struct rpc_xprt *)task->tk_xprt;
	struct rpcrdma_xprt *r_xprt = FUNC2(xprt);

	if (r_xprt->rx_ep.rep_connected != 0) {
		/* Reconnect */
		FUNC3(&r_xprt->rdma_connect,
			xprt->reestablish_timeout);
		xprt->reestablish_timeout <<= 1;
		if (xprt->reestablish_timeout > (30 * HZ))
			xprt->reestablish_timeout = (30 * HZ);
		else if (xprt->reestablish_timeout < (5 * HZ))
			xprt->reestablish_timeout = (5 * HZ);
	} else {
		FUNC3(&r_xprt->rdma_connect, 0);
		if (!FUNC0(task))
			FUNC1();
	}
}