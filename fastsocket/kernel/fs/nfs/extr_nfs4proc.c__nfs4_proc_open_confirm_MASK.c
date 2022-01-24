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
struct rpc_task_setup {int /*<<< orphan*/  flags; int /*<<< orphan*/  workqueue; struct nfs4_opendata* callback_data; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; int /*<<< orphan*/  rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int /*<<< orphan*/  rpc_cred; int /*<<< orphan*/ * rpc_resp; int /*<<< orphan*/ * rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs4_opendata {int rpc_status; int cancelled; int /*<<< orphan*/  timestamp; scalar_t__ rpc_done; int /*<<< orphan*/  kref; TYPE_2__* owner; int /*<<< orphan*/  c_res; int /*<<< orphan*/  c_arg; TYPE_1__* dir; } ;
struct TYPE_4__ {int /*<<< orphan*/  so_cred; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 size_t NFSPROC4_CLNT_OPEN_CONFIRM ; 
 struct nfs_server* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs4_open_confirm_ops ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int FUNC4 (struct rpc_task*) ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*) ; 
 struct rpc_task* FUNC6 (struct rpc_task_setup*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct nfs4_opendata *data)
{
	struct nfs_server *server = FUNC1(data->dir->d_inode);
	struct rpc_task *task;
	struct  rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_OPEN_CONFIRM],
		.rpc_argp = &data->c_arg,
		.rpc_resp = &data->c_res,
		.rpc_cred = data->owner->so_cred,
	};
	struct rpc_task_setup task_setup_data = {
		.rpc_client = server->client,
		.rpc_message = &msg,
		.callback_ops = &nfs4_open_confirm_ops,
		.callback_data = data,
		.workqueue = nfsiod_workqueue,
		.flags = RPC_TASK_ASYNC,
	};
	int status;

	FUNC3(&data->kref);
	data->rpc_done = 0;
	data->rpc_status = 0;
	data->timestamp = jiffies;
	task = FUNC6(&task_setup_data);
	if (FUNC0(task))
		return FUNC2(task);
	status = FUNC4(task);
	if (status != 0) {
		data->cancelled = 1;
		FUNC7();
	} else
		status = data->rpc_status;
	FUNC5(task);
	return status;
}