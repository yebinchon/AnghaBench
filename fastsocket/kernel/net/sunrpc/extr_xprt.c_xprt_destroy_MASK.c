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
struct rpc_xprt {TYPE_1__* ops; int /*<<< orphan*/  task_cleanup; int /*<<< orphan*/  backlog; int /*<<< orphan*/  sending; int /*<<< orphan*/  pending; int /*<<< orphan*/  binding; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct rpc_xprt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*) ; 

__attribute__((used)) static void FUNC5(struct rpc_xprt *xprt)
{
	FUNC2("RPC:       destroying transport %p\n", xprt);
	FUNC1(&xprt->timer);

	FUNC3(&xprt->binding);
	FUNC3(&xprt->pending);
	FUNC3(&xprt->sending);
	FUNC3(&xprt->backlog);
	FUNC0(&xprt->task_cleanup);
	/*
	 * Tear down transport state and free the rpc_xprt
	 */
	xprt->ops->destroy(xprt);
}