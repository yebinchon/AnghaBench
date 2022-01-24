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
struct TYPE_2__ {struct nfs_renameres* rpc_resp; } ;
struct rpc_task {TYPE_1__ tk_msg; } ;
struct nfs_renameres {int /*<<< orphan*/  new_fattr; int /*<<< orphan*/  old_fattr; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct rpc_task *task, struct inode *old_dir,
		      struct inode *new_dir)
{
	struct nfs_renameres *res;

	if (FUNC0(task, old_dir))
		return 0;
	res = task->tk_msg.rpc_resp;

	FUNC1(old_dir, res->old_fattr);
	FUNC1(new_dir, res->new_fattr);
	return 1;
}