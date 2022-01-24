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
struct rpc_task {int dummy; } ;
struct nfs_read_data {int /*<<< orphan*/  fattr; TYPE_1__* header; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct rpc_task*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rpc_task *task, struct nfs_read_data *data)
{
	struct inode *inode = data->header->inode;

	if (FUNC0(task, inode))
		return -EAGAIN;

	FUNC1(inode);
	FUNC2(inode, &data->fattr);
	return 0;
}