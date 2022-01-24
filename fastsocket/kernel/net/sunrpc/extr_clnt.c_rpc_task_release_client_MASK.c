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
struct rpc_task {struct rpc_clnt* tk_client; int /*<<< orphan*/  tk_task; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rpc_task *task)
{
	struct rpc_clnt *clnt = task->tk_client;

	if (clnt != NULL) {
		/* Remove from client task list */
		FUNC2(&clnt->cl_lock);
		FUNC0(&task->tk_task);
		FUNC3(&clnt->cl_lock);
		task->tk_client = NULL;

		FUNC1(clnt);
	}
}