#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_message {struct nfs_removeres* rpc_resp; struct nfs_removeargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs_removeres {int /*<<< orphan*/  cinfo; int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct nfs_removeargs {int /*<<< orphan*/  seq_args; TYPE_1__ name; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct qstr *name)
{
	struct nfs_server *server = FUNC1(dir);
	struct nfs_removeargs args = {
		.fh = FUNC0(dir),
		.name.len = name->len,
		.name.name = name->name,
	};
	struct nfs_removeres res = {
		.server = server,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_REMOVE],
		.rpc_argp = &args,
		.rpc_resp = &res,
	};
	int status;

	status = FUNC2(server->client, server, &msg, &args.seq_args, &res.seq_res, 1);
	if (status == 0)
		FUNC3(dir, &res.cinfo);
	return status;
}