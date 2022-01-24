#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int dummy; } ;
struct nfs_seqid {int dummy; } ;
struct nfs_inode {int /*<<< orphan*/  rwsem; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_delegreturn_mutex; } ;
struct nfs4_state {int /*<<< orphan*/  flags; struct nfs4_state_owner* owner; struct inode* inode; } ;
struct nfs4_lock_state {int /*<<< orphan*/  ls_seqid; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {struct nfs4_lock_state* owner; } ;
struct TYPE_4__ {TYPE_1__ nfs4_fl; } ;
struct file_lock {unsigned char fl_flags; int /*<<< orphan*/  fl_file; TYPE_2__ fl_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int ENOMEM ; 
 unsigned char FL_EXISTS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  NFS_DELEGATED_STATE ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct rpc_task* FUNC7 (struct file_lock*,int /*<<< orphan*/ ,struct nfs4_lock_state*,struct nfs_seqid*) ; 
 int FUNC8 (struct nfs4_state*,struct file_lock*) ; 
 int FUNC9 (struct rpc_task*) ; 
 struct nfs_seqid* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_task*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct nfs4_state *state, int cmd, struct file_lock *request)
{
	struct inode *inode = state->inode;
	struct nfs4_state_owner *sp = state->owner;
	struct nfs_inode *nfsi = FUNC1(inode);
	struct nfs_seqid *seqid;
	struct nfs4_lock_state *lsp;
	struct rpc_task *task;
	int status = 0;
	unsigned char fl_flags = request->fl_flags;

	status = FUNC8(state, request);
	/* Unlock _before_ we do the RPC call */
	request->fl_flags |= FL_EXISTS;
	/* Exclude nfs_delegation_claim_locks() */
	FUNC5(&sp->so_delegreturn_mutex);
	/* Exclude nfs4_reclaim_open_stateid() - note nesting! */
	FUNC4(&nfsi->rwsem);
	if (FUNC3(request->fl_file, request) == -ENOENT) {
		FUNC14(&nfsi->rwsem);
		FUNC6(&sp->so_delegreturn_mutex);
		goto out;
	}
	FUNC14(&nfsi->rwsem);
	FUNC6(&sp->so_delegreturn_mutex);
	if (status != 0)
		goto out;
	/* Is this a delegated lock? */
	if (FUNC13(NFS_DELEGATED_STATE, &state->flags))
		goto out;
	lsp = request->fl_u.nfs4_fl.owner;
	seqid = FUNC10(&lsp->ls_seqid, GFP_KERNEL);
	status = -ENOMEM;
	if (seqid == NULL)
		goto out;
	task = FUNC7(request, FUNC11(request->fl_file), lsp, seqid);
	status = FUNC2(task);
	if (FUNC0(task))
		goto out;
	status = FUNC9(task);
	FUNC12(task);
out:
	request->fl_flags = fl_flags;
	return status;
}