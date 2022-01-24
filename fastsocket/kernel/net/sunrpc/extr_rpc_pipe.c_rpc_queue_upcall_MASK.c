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
struct rpc_pipe_msg {scalar_t__ len; int /*<<< orphan*/  list; } ;
struct rpc_inode {int flags; int /*<<< orphan*/  waitq; int /*<<< orphan*/  pipelen; int /*<<< orphan*/  pipe; int /*<<< orphan*/  queue_timeout; scalar_t__ nreaders; int /*<<< orphan*/ * ops; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int EPIPE ; 
 struct rpc_inode* FUNC0 (struct inode*) ; 
 int RPC_PIPE_WAIT_FOR_OPEN ; 
 int /*<<< orphan*/  RPC_UPCALL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpciod_workqueue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct inode *inode, struct rpc_pipe_msg *msg)
{
	struct rpc_inode *rpci = FUNC0(inode);
	int res = -EPIPE;

	FUNC4(&inode->i_lock);
	if (rpci->ops == NULL)
		goto out;
	if (rpci->nreaders) {
		FUNC1(&msg->list, &rpci->pipe);
		rpci->pipelen += msg->len;
		res = 0;
	} else if (rpci->flags & RPC_PIPE_WAIT_FOR_OPEN) {
		if (FUNC2(&rpci->pipe))
			FUNC3(rpciod_workqueue,
					&rpci->queue_timeout,
					RPC_UPCALL_TIMEOUT);
		FUNC1(&msg->list, &rpci->pipe);
		rpci->pipelen += msg->len;
		res = 0;
	}
out:
	FUNC5(&inode->i_lock);
	FUNC6(&rpci->waitq);
	return res;
}