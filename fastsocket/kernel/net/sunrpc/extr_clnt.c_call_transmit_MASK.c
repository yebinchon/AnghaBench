#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {scalar_t__ tk_status; TYPE_2__* tk_xprt; int /*<<< orphan*/  (* tk_action ) (struct rpc_task*) ;TYPE_1__* tk_rqstp; } ;
struct TYPE_4__ {int /*<<< orphan*/  pending; } ;
struct TYPE_3__ {scalar_t__ rq_bytes_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EAGAIN ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*) ; 
 scalar_t__ FUNC7 (struct rpc_task*) ; 
 scalar_t__ FUNC8 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_task*) ; 
 scalar_t__ FUNC11 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_task*) ; 

__attribute__((used)) static void
FUNC13(struct rpc_task *task)
{
	FUNC3(task);

	task->tk_action = call_status;
	if (task->tk_status < 0)
		return;
	task->tk_status = FUNC11(task);
	if (task->tk_status != 0)
		return;
	task->tk_action = call_transmit_status;
	/* Encode here so that rpcsec_gss can use correct sequence number. */
	if (FUNC8(task)) {
		FUNC0(task->tk_rqstp->rq_bytes_sent != 0);
		FUNC10(task);
		/* Did the encode result in an error condition? */
		if (task->tk_status != 0) {
			/* Was the error nonfatal? */
			if (task->tk_status == -EAGAIN)
				FUNC4(task, HZ >> 4);
			else
				FUNC5(task, task->tk_status);
			return;
		}
	}
	FUNC12(task);
	if (task->tk_status < 0)
		return;
	/*
	 * On success, ensure that we call xprt_end_transmit() before sleeping
	 * in order to allow access to the socket to other RPC requests.
	 */
	FUNC2(task);
	if (FUNC7(task))
		return;
	task->tk_action = rpc_exit_task;
	FUNC9(&task->tk_xprt->pending, task);
}