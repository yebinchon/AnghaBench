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
struct rpc_task_setup {struct nfs_renamedata* callback_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  rpc_client; int /*<<< orphan*/  workqueue; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int /*<<< orphan*/  rpc_cred; TYPE_2__* rpc_resp; TYPE_1__* rpc_argp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * new_fattr; int /*<<< orphan*/ * old_fattr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * new_name; void* new_dir; int /*<<< orphan*/ * old_name; void* old_dir; } ;
struct nfs_renamedata {struct inode* old_dir; int /*<<< orphan*/  new_fattr; TYPE_2__ res; int /*<<< orphan*/  old_fattr; TYPE_1__ args; void* new_dentry; void* old_dentry; struct inode* new_dir; int /*<<< orphan*/  cred; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_count; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* rename_setup ) (struct rpc_message*,struct inode*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rpc_task* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rpc_task* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 void* FUNC4 (struct inode*) ; 
 TYPE_3__* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_renamedata*) ; 
 struct nfs_renamedata* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_rename_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct rpc_task* FUNC13 (struct rpc_task_setup*) ; 
 int /*<<< orphan*/  FUNC14 (struct rpc_message*,struct inode*) ; 

__attribute__((used)) static struct rpc_task *
FUNC15(struct inode *old_dir, struct inode *new_dir,
		 struct dentry *old_dentry, struct dentry *new_dentry)
{
	struct nfs_renamedata *data;
	struct rpc_message msg = { };
	struct rpc_task_setup task_setup_data = {
		.rpc_message = &msg,
		.callback_ops = &nfs_rename_ops,
		.workqueue = nfsiod_workqueue,
		.rpc_client = FUNC3(old_dir),
		.flags = RPC_TASK_ASYNC,
	};

	data = FUNC9(sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		return FUNC1(-ENOMEM);
	task_setup_data.callback_data = data,

	data->cred = FUNC12();
	if (FUNC2(data->cred)) {
		struct rpc_task *task = FUNC0(data->cred);
		FUNC8(data);
		return task;
	}

	msg.rpc_argp = &data->args;
	msg.rpc_resp = &data->res;
	msg.rpc_cred = data->cred;

	/* set up nfs_renamedata */
	data->old_dir = old_dir;
	FUNC6(&old_dir->i_count);
	data->new_dir = new_dir;
	FUNC6(&new_dir->i_count);
	data->old_dentry = FUNC7(old_dentry);
	data->new_dentry = FUNC7(new_dentry);
	FUNC10(&data->old_fattr);
	FUNC10(&data->new_fattr);

	/* set up nfs_renameargs */
	data->args.old_dir = FUNC4(old_dir);
	data->args.old_name = &old_dentry->d_name;
	data->args.new_dir = FUNC4(new_dir);
	data->args.new_name = &new_dentry->d_name;

	/* set up nfs_renameres */
	data->res.old_fattr = &data->old_fattr;
	data->res.new_fattr = &data->new_fattr;

	FUNC11(old_dir->i_sb);

	FUNC5(data->old_dir)->rename_setup(&msg, old_dir);

	return FUNC13(&task_setup_data);
}