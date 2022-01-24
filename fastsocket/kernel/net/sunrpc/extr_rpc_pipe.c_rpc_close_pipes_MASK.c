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
struct rpc_pipe_ops {int /*<<< orphan*/  (* release_pipe ) (struct inode*) ;int /*<<< orphan*/  destroy_msg; } ;
struct rpc_inode {scalar_t__ nreaders; scalar_t__ nwriters; int /*<<< orphan*/  queue_timeout; struct rpc_pipe_ops* ops; scalar_t__ pipelen; int /*<<< orphan*/  pipe; int /*<<< orphan*/  in_upcall; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rpc_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

__attribute__((used)) static void
FUNC11(struct inode *inode)
{
	struct rpc_inode *rpci = FUNC1(inode);
	const struct rpc_pipe_ops *ops;
	int need_release;

	FUNC4(&inode->i_mutex);
	ops = rpci->ops;
	if (ops != NULL) {
		FUNC0(free_list);
		FUNC8(&inode->i_lock);
		need_release = rpci->nreaders != 0 || rpci->nwriters != 0;
		rpci->nreaders = 0;
		FUNC3(&rpci->in_upcall, &free_list);
		FUNC3(&rpci->pipe, &free_list);
		rpci->pipelen = 0;
		rpci->ops = NULL;
		FUNC9(&inode->i_lock);
		FUNC7(rpci, &free_list, ops->destroy_msg, -EPIPE);
		rpci->nwriters = 0;
		if (need_release && ops->release_pipe)
			ops->release_pipe(inode);
		FUNC2(&rpci->queue_timeout);
	}
	FUNC6(inode, NULL);
	FUNC5(&inode->i_mutex);
}