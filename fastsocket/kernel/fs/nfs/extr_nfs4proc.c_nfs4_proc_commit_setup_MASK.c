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
struct rpc_message {int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct TYPE_3__ {int /*<<< orphan*/  seq_args; } ;
struct nfs_commit_data {TYPE_2__ res; TYPE_1__ args; int /*<<< orphan*/ * commit_done_cb; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_COMMIT ; 
 struct nfs_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * nfs4_commit_done_cb ; 
 int /*<<< orphan*/ * nfs4_procedures ; 

__attribute__((used)) static void FUNC2(struct nfs_commit_data *data, struct rpc_message *msg)
{
	struct nfs_server *server = FUNC0(data->inode);

	if (data->commit_done_cb == NULL)
		data->commit_done_cb = nfs4_commit_done_cb;
	data->res.server = server;
	msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_COMMIT];
	FUNC1(&data->args.seq_args, &data->res.seq_res, 1);
}