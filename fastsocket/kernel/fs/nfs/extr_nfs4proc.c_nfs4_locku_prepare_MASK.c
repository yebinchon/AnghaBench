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
struct rpc_task {int /*<<< orphan*/ * tk_action; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_6__ {int /*<<< orphan*/  seqid; int /*<<< orphan*/  seq_args; } ;
struct nfs4_unlockdata {TYPE_2__ res; TYPE_3__ arg; int /*<<< orphan*/  server; int /*<<< orphan*/  timestamp; TYPE_1__* lsp; } ;
struct TYPE_4__ {int ls_flags; } ;

/* Variables and functions */
 int NFS_LOCK_INITIALIZED ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC5(struct rpc_task *task, void *data)
{
	struct nfs4_unlockdata *calldata = data;

	if (FUNC3(calldata->arg.seqid, task) != 0)
		goto out_wait;
	if ((calldata->lsp->ls_flags & NFS_LOCK_INITIALIZED) == 0) {
		/* Note: exit _without_ running nfs4_locku_done */
		goto out_no_action;
	}
	calldata->timestamp = jiffies;
	if (FUNC1(calldata->server,
				&calldata->arg.seq_args,
				&calldata->res.seq_res,
				task) != 0)
		FUNC2(calldata->arg.seqid);
	else
		FUNC4(task);
	return;
out_no_action:
	task->tk_action = NULL;
out_wait:
	FUNC0(task, &calldata->res.seq_res);
}