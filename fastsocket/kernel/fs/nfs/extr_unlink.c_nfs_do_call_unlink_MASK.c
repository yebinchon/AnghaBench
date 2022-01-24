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
struct rpc_task_setup {int /*<<< orphan*/  rpc_client; int /*<<< orphan*/  flags; int /*<<< orphan*/  workqueue; struct nfs_unlinkdata* callback_data; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int /*<<< orphan*/  rpc_cred; TYPE_2__* rpc_resp; TYPE_1__* rpc_argp; } ;
struct TYPE_5__ {int /*<<< orphan*/  dir_attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  fh; int /*<<< orphan*/  name; } ;
struct nfs_unlinkdata {TYPE_2__ res; TYPE_1__ args; int /*<<< orphan*/  dir; int /*<<< orphan*/  cred; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; struct nfs_unlinkdata* d_fsdata; int /*<<< orphan*/ * d_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* unlink_setup ) (struct rpc_message*,struct inode*) ;} ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 struct dentry* FUNC4 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct dentry*,struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_unlink_ops ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_task*) ; 
 struct rpc_task* FUNC13 (struct rpc_task_setup*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct rpc_message*,struct inode*) ; 

__attribute__((used)) static int FUNC17(struct dentry *parent, struct inode *dir, struct nfs_unlinkdata *data)
{
	struct rpc_message msg = {
		.rpc_argp = &data->args,
		.rpc_resp = &data->res,
		.rpc_cred = data->cred,
	};
	struct rpc_task_setup task_setup_data = {
		.rpc_message = &msg,
		.callback_ops = &nfs_unlink_ops,
		.callback_data = data,
		.workqueue = nfsiod_workqueue,
		.flags = RPC_TASK_ASYNC,
	};
	struct rpc_task *task;
	struct dentry *alias;

	alias = FUNC4(parent, &data->args.name);
	if (alias != NULL) {
		int ret;

		/*
		 * Hey, we raced with lookup... See if we need to transfer
		 * the sillyrename information to the aliased dentry.
		 */
		FUNC10(data);
		ret = FUNC7(alias, data);
		FUNC14(&alias->d_lock);
		if (ret == 0 && alias->d_inode != NULL &&
		    !(alias->d_flags & DCACHE_NFSFS_RENAMED)) {
			alias->d_fsdata = data;
			alias->d_flags |= DCACHE_NFSFS_RENAMED;
			ret = 1;
		} else
			ret = 0;
		FUNC15(&alias->d_lock);
		FUNC8(dir);
		FUNC5(alias);
		return ret;
	}
	data->dir = FUNC6(dir);
	if (!data->dir) {
		FUNC8(dir);
		return 0;
	}
	FUNC11(dir->i_sb);
	data->args.fh = FUNC2(dir);
	FUNC9(data->res.dir_attr);

	FUNC3(dir)->unlink_setup(&msg, dir);

	task_setup_data.rpc_client = FUNC1(dir);
	task = FUNC13(&task_setup_data);
	if (!FUNC0(task))
		FUNC12(task);
	return 1;
}