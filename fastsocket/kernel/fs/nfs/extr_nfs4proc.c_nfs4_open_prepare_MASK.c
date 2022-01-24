#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * rpc_proc; } ;
struct rpc_task {int /*<<< orphan*/ * tk_action; TYPE_3__ tk_msg; } ;
struct nfs_delegation {int dummy; } ;
struct nfs_client {TYPE_4__* cl_mvops; int /*<<< orphan*/  cl_clientid; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct nfs4_state_owner {TYPE_2__ so_owner_id; TYPE_1__* so_server; } ;
struct TYPE_14__ {int /*<<< orphan*/  seq_res; int /*<<< orphan*/  fh; } ;
struct TYPE_13__ {int open_flags; scalar_t__ claim; int /*<<< orphan*/  createmode; int /*<<< orphan*/  seqid; int /*<<< orphan*/  seq_args; int /*<<< orphan*/  server; int /*<<< orphan*/  fh; int /*<<< orphan*/  clientid; int /*<<< orphan*/  id; int /*<<< orphan*/  fmode; } ;
struct nfs4_opendata {TYPE_6__ o_res; TYPE_5__ o_arg; int /*<<< orphan*/  timestamp; TYPE_7__* state; struct nfs4_state_owner* owner; } ;
struct TYPE_16__ {int /*<<< orphan*/  delegation; } ;
struct TYPE_15__ {int /*<<< orphan*/  inode; } ;
struct TYPE_12__ {scalar_t__ minor_version; } ;
struct TYPE_9__ {struct nfs_client* nfs_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_CREATE_EXCLUSIVE ; 
 int /*<<< orphan*/  NFS4_CREATE_EXCLUSIVE4_1 ; 
 int /*<<< orphan*/  NFS4_CREATE_GUARDED ; 
 int /*<<< orphan*/  NFS4_CREATE_UNCHECKED ; 
 scalar_t__ NFS4_OPEN_CLAIM_DELEGATE_CUR ; 
 scalar_t__ NFS4_OPEN_CLAIM_PREVIOUS ; 
 size_t NFSPROC4_CLNT_OPEN_NOATTR ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int O_EXCL ; 
 scalar_t__ FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct nfs_delegation*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (struct nfs_client*) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct rpc_task*) ; 
 struct nfs_delegation* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC13(struct rpc_task *task, void *calldata)
{
	struct nfs4_opendata *data = calldata;
	struct nfs4_state_owner *sp = data->owner;
	struct nfs_client *clp = sp->so_server->nfs_client;

	if (FUNC8(data->o_arg.seqid, task) != 0)
		goto out_wait;
	/*
	 * Check if we still need to send an OPEN call, or if we can use
	 * a delegation instead.
	 */
	if (data->state != NULL) {
		struct nfs_delegation *delegation;

		if (FUNC1(data->state, data->o_arg.fmode, data->o_arg.open_flags))
			goto out_no_action;
		FUNC10();
		delegation = FUNC9(FUNC0(data->state->inode)->delegation);
		if (data->o_arg.claim != NFS4_OPEN_CLAIM_DELEGATE_CUR &&
		    FUNC2(delegation, data->o_arg.fmode))
			goto unlock_no_action;
		FUNC11();
	}
	/* Update sequence id. */
	data->o_arg.id = sp->so_owner_id.id;
	data->o_arg.clientid = clp->cl_clientid;
	if (data->o_arg.claim == NFS4_OPEN_CLAIM_PREVIOUS) {
		task->tk_msg.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_OPEN_NOATTR];
		FUNC6(&data->o_res.fh, data->o_arg.fh);
	}
	data->timestamp = jiffies;
	if (FUNC5(data->o_arg.server,
				&data->o_arg.seq_args,
				&data->o_res.seq_res,
				task) != 0)
		FUNC7(data->o_arg.seqid);
	else
		FUNC12(task);

	/* Set the create mode (note dependency on the session type) */
	data->o_arg.createmode = NFS4_CREATE_UNCHECKED;
	if (data->o_arg.open_flags & O_EXCL) {
		data->o_arg.createmode = NFS4_CREATE_EXCLUSIVE;
		if (FUNC3(clp))
			data->o_arg.createmode = NFS4_CREATE_GUARDED;
		else if (clp->cl_mvops->minor_version > 0)
			data->o_arg.createmode = NFS4_CREATE_EXCLUSIVE4_1;
	}
	return;
unlock_no_action:
	FUNC11();
out_no_action:
	task->tk_action = NULL;
out_wait:
	FUNC4(task, &data->o_res.seq_res);
}