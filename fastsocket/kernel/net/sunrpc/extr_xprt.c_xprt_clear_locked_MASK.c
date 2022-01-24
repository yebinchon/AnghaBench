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
struct rpc_xprt {int /*<<< orphan*/  task_cleanup; int /*<<< orphan*/  state; int /*<<< orphan*/ * snd_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_CLOSE_WAIT ; 
 int /*<<< orphan*/  XPRT_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpciod_workqueue ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rpc_xprt *xprt)
{
	xprt->snd_task = NULL;
	if (!FUNC4(XPRT_CLOSE_WAIT, &xprt->state)) {
		FUNC3();
		FUNC0(XPRT_LOCKED, &xprt->state);
		FUNC2();
	} else
		FUNC1(rpciod_workqueue, &xprt->task_cleanup);
}