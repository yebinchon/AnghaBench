#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_6__ {scalar_t__ count; int eof; TYPE_4__* fattr; } ;
struct TYPE_7__ {scalar_t__ offset; } ;
struct nfs_read_data {TYPE_2__ res; TYPE_3__ args; TYPE_1__* header; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_5__ {struct inode* inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC3(struct rpc_task *task, struct nfs_read_data *data)
{
	struct inode *inode = data->header->inode;

	if (FUNC0(task))
		return -EAGAIN;

	FUNC1(inode);
	if (task->tk_status >= 0) {
		FUNC2(inode, data->res.fattr);
		/* Emulate the eof flag, which isn't normally needed in NFSv2
		 * as it is guaranteed to always return the file attributes
		 */
		if (data->args.offset + data->res.count >= data->res.fattr->size)
			data->res.eof = 1;
	}
	return 0;
}