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
struct rpc_task_setup {struct nfs4_unlockdata* callback_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  workqueue; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; int /*<<< orphan*/  rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {TYPE_3__* rpc_resp; TYPE_2__* rpc_argp; int /*<<< orphan*/  rpc_cred; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_seqid {int dummy; } ;
struct nfs_open_context {int /*<<< orphan*/  cred; } ;
struct TYPE_6__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq_args; } ;
struct nfs4_unlockdata {TYPE_3__ res; TYPE_2__ arg; } ;
struct nfs4_lock_state {TYPE_1__* ls_state; } ;
struct file_lock {int /*<<< orphan*/  fl_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rpc_task* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_UNLCK ; 
 size_t NFSPROC4_CLNT_LOCKU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nfs4_unlockdata* FUNC3 (struct file_lock*,struct nfs_open_context*,struct nfs4_lock_state*,struct nfs_seqid*) ; 
 int /*<<< orphan*/  nfs4_locku_ops ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_seqid*) ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 struct rpc_task* FUNC5 (struct rpc_task_setup*) ; 

__attribute__((used)) static struct rpc_task *FUNC6(struct file_lock *fl,
		struct nfs_open_context *ctx,
		struct nfs4_lock_state *lsp,
		struct nfs_seqid *seqid)
{
	struct nfs4_unlockdata *data;
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOCKU],
		.rpc_cred = ctx->cred,
	};
	struct rpc_task_setup task_setup_data = {
		.rpc_client = FUNC1(lsp->ls_state->inode),
		.rpc_message = &msg,
		.callback_ops = &nfs4_locku_ops,
		.workqueue = nfsiod_workqueue,
		.flags = RPC_TASK_ASYNC,
	};

	/* Ensure this is an unlock - when canceling a lock, the
	 * canceled lock is passed in, and it won't be an unlock.
	 */
	fl->fl_type = F_UNLCK;

	data = FUNC3(fl, ctx, lsp, seqid);
	if (data == NULL) {
		FUNC4(seqid);
		return FUNC0(-ENOMEM);
	}

	FUNC2(&data->arg.seq_args, &data->res.seq_res, 1);
	msg.rpc_argp = &data->arg;
	msg.rpc_resp = &data->res;
	task_setup_data.callback_data = data;
	return FUNC5(&task_setup_data);
}