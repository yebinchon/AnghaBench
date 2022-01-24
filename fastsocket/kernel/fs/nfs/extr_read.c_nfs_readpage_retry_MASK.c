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
struct nfs_readres {scalar_t__ count; } ;
struct nfs_readargs {int /*<<< orphan*/  count; int /*<<< orphan*/  pgbase; int /*<<< orphan*/  offset; } ;
struct nfs_read_data {int /*<<< orphan*/  mds_offset; TYPE_1__* header; struct nfs_readres res; struct nfs_readargs args; } ;
struct TYPE_2__ {int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  NFSIOS_SHORTREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task, struct nfs_read_data *data)
{
	struct nfs_readargs *argp = &data->args;
	struct nfs_readres *resp = &data->res;

	/* This is a short read! */
	FUNC0(data->header->inode, NFSIOS_SHORTREAD);
	/* Has the server at least made some progress? */
	if (resp->count == 0) {
		FUNC1(data->header, -EIO, argp->offset);
		return;
	}
	/* Yes, so retry the read at the end of the data */
	data->mds_offset += resp->count;
	argp->offset += resp->count;
	argp->pgbase += resp->count;
	argp->count -= resp->count;
	FUNC2(task);
}