#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_6__ {TYPE_2__* context; } ;
struct nfs_write_data {int /*<<< orphan*/  fattr; int /*<<< orphan*/  timestamp; TYPE_3__ args; TYPE_1__* header; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {struct inode* inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct rpc_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*) ; 

__attribute__((used)) static int FUNC5(struct rpc_task *task, struct nfs_write_data *data)
{
	struct inode *inode = data->header->inode;
	
	if (FUNC1(task, FUNC0(inode), data->args.context->state) == -EAGAIN) {
		FUNC4(task);
		return -EAGAIN;
	}
	if (task->tk_status >= 0) {
		FUNC3(FUNC0(inode), data->timestamp);
		FUNC2(inode, &data->fattr);
	}
	return 0;
}