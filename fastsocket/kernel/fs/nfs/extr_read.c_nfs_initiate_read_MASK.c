#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rpc_task_setup {int flags; int /*<<< orphan*/  workqueue; struct nfs_read_data* callback_data; struct rpc_call_ops const* callback_ops; struct rpc_message* rpc_message; struct rpc_clnt* rpc_client; TYPE_2__* task; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int /*<<< orphan*/  rpc_cred; int /*<<< orphan*/ * rpc_resp; TYPE_4__* rpc_argp; } ;
struct rpc_clnt {int dummy; } ;
struct rpc_call_ops {int dummy; } ;
struct TYPE_9__ {scalar_t__ offset; int /*<<< orphan*/  count; } ;
struct TYPE_7__ {int /*<<< orphan*/  tk_pid; } ;
struct nfs_read_data {TYPE_4__ args; TYPE_2__ task; TYPE_1__* header; int /*<<< orphan*/  res; } ;
struct inode {TYPE_3__* i_sb; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* read_setup ) (struct nfs_read_data*,struct rpc_message*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  s_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  cred; struct inode* inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 TYPE_5__* FUNC3 (struct inode*) ; 
 int NFS_RPC_SWAPFLAGS ; 
 int FUNC4 (struct rpc_task*) ; 
 int RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*) ; 
 struct rpc_task* FUNC7 (struct rpc_task_setup*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_read_data*,struct rpc_message*) ; 

int FUNC9(struct rpc_clnt *clnt,
		      struct nfs_read_data *data,
		      const struct rpc_call_ops *call_ops)
{
	struct inode *inode = data->header->inode;
	int swap_flags = FUNC1(inode) ? NFS_RPC_SWAPFLAGS : 0;
	struct rpc_task *task;
	struct rpc_message msg = {
		.rpc_argp = &data->args,
		.rpc_resp = &data->res,
		.rpc_cred = data->header->cred,
	};
	struct rpc_task_setup task_setup_data = {
		.task = &data->task,
		.rpc_client = clnt,
		.rpc_message = &msg,
		.callback_ops = call_ops,
		.callback_data = data,
		.workqueue = nfsiod_workqueue,
		.flags = RPC_TASK_ASYNC | swap_flags,
	};

	/* Set up the initial task struct. */
	FUNC3(inode)->read_setup(data, &msg);

	FUNC5("NFS: %5u initiated read call (req %s/%lld, %u bytes @ "
			"offset %llu)\n",
			data->task.tk_pid,
			inode->i_sb->s_id,
			(long long)FUNC2(inode),
			data->args.count,
			(unsigned long long)data->args.offset);

	task = FUNC7(&task_setup_data);
	if (FUNC0(task))
		return FUNC4(task);
	FUNC6(task);
	return 0;
}