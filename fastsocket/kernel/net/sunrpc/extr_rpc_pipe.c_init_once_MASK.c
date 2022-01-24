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
struct rpc_inode {int /*<<< orphan*/ * ops; int /*<<< orphan*/  queue_timeout; int /*<<< orphan*/  waitq; scalar_t__ pipelen; int /*<<< orphan*/  pipe; int /*<<< orphan*/  in_downcall; int /*<<< orphan*/  in_upcall; scalar_t__ nwriters; scalar_t__ nreaders; int /*<<< orphan*/ * private; int /*<<< orphan*/  vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_timeout_upcall_queue ; 

__attribute__((used)) static void
FUNC4(void *foo)
{
	struct rpc_inode *rpci = (struct rpc_inode *) foo;

	FUNC3(&rpci->vfs_inode);
	rpci->private = NULL;
	rpci->nreaders = 0;
	rpci->nwriters = 0;
	FUNC1(&rpci->in_upcall);
	FUNC1(&rpci->in_downcall);
	FUNC1(&rpci->pipe);
	rpci->pipelen = 0;
	FUNC2(&rpci->waitq);
	FUNC0(&rpci->queue_timeout,
			    rpc_timeout_upcall_queue);
	rpci->ops = NULL;
}