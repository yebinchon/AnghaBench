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
struct rpc_task {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock_context; TYPE_4__* context; int /*<<< orphan*/  stateid; int /*<<< orphan*/  seq_args; } ;
struct TYPE_6__ {int /*<<< orphan*/  seq_res; } ;
struct nfs_write_data {TYPE_3__ args; TYPE_2__ res; TYPE_1__* ds_clp; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  cl_session; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  NFS_CONTEXT_BAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rpc_task *task, void *data)
{
	struct nfs_write_data *wdata = data;

	if (FUNC5(FUNC4(NFS_CONTEXT_BAD, &wdata->args.context->flags))) {
		FUNC3(task, -EIO);
		return;
	}
	if (FUNC0(wdata->ds_clp->cl_session,
				&wdata->args.seq_args, &wdata->res.seq_res,
				task))
		return;

	FUNC2(task);
	FUNC1(&wdata->args.stateid, wdata->args.context,
			wdata->args.lock_context, FMODE_WRITE);
}