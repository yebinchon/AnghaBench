#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_message {struct nfs4_link_res* rpc_resp; struct nfs4_link_arg* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  client; int /*<<< orphan*/  attr_bitmask; } ;
struct nfs4_link_res {int /*<<< orphan*/ * fattr; int /*<<< orphan*/  cinfo; int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct nfs4_link_arg {int /*<<< orphan*/  seq_args; int /*<<< orphan*/  bitmask; struct qstr* name; int /*<<< orphan*/  dir_fh; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFSPROC4_CLNT_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct inode *dir, struct qstr *name)
{
	struct nfs_server *server = FUNC1(inode);
	struct nfs4_link_arg arg = {
		.fh     = FUNC0(inode),
		.dir_fh = FUNC0(dir),
		.name   = name,
		.bitmask = server->attr_bitmask,
	};
	struct nfs4_link_res res = {
		.server = server,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LINK],
		.rpc_argp = &arg,
		.rpc_resp = &res,
	};
	int status = -ENOMEM;

	res.fattr = FUNC3();
	if (res.fattr == NULL)
		goto out;

	status = FUNC2(server->client, server, &msg, &arg.seq_args, &res.seq_res, 1);
	if (!status) {
		FUNC6(dir, &res.cinfo);
		FUNC5(inode, res.fattr);
	}
out:
	FUNC4(res.fattr);
	return status;
}