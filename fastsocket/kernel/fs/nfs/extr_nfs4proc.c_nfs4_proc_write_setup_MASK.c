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
struct rpc_message {int /*<<< orphan*/ * rpc_proc; } ;
struct TYPE_6__ {int /*<<< orphan*/  seq_res; struct nfs_server* server; int /*<<< orphan*/ * fattr; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq_args; int /*<<< orphan*/ * bitmask; } ;
struct nfs_write_data {TYPE_3__ res; TYPE_2__ args; int /*<<< orphan*/  timestamp; scalar_t__ write_done_cb; TYPE_1__* header; } ;
struct nfs_server {int /*<<< orphan*/ * cache_consistency_bitmask; } ;
struct TYPE_4__ {int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_WRITE ; 
 struct nfs_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 scalar_t__ nfs4_write_done_cb ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_write_data*) ; 

__attribute__((used)) static void FUNC3(struct nfs_write_data *data, struct rpc_message *msg)
{
	struct nfs_server *server = FUNC0(data->header->inode);

	if (!FUNC2(data)) {
		data->args.bitmask = NULL;
		data->res.fattr = NULL;
	} else
		data->args.bitmask = server->cache_consistency_bitmask;

	if (!data->write_done_cb)
		data->write_done_cb = nfs4_write_done_cb;
	data->res.server = server;
	data->timestamp   = jiffies;

	msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_WRITE];
	FUNC1(&data->args.seq_args, &data->res.seq_res, 1);
}