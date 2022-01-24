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
struct rpc_message {int /*<<< orphan*/  rpc_cred; struct nfs4_accessres* rpc_resp; struct nfs4_accessargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int /*<<< orphan*/  client; int /*<<< orphan*/  attr_bitmask; } ;
struct nfs_access_entry {int mask; int /*<<< orphan*/  cred; } ;
struct nfs4_accessres {int /*<<< orphan*/ * fattr; int /*<<< orphan*/  access; int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct nfs4_accessargs {int access; int /*<<< orphan*/  seq_args; int /*<<< orphan*/  bitmask; int /*<<< orphan*/  fh; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int NFS4_ACCESS_DELETE ; 
 int NFS4_ACCESS_EXECUTE ; 
 int NFS4_ACCESS_EXTEND ; 
 int NFS4_ACCESS_LOOKUP ; 
 int NFS4_ACCESS_MODIFY ; 
 int NFS4_ACCESS_READ ; 
 size_t NFSPROC4_CLNT_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_access_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct nfs_access_entry *entry)
{
	struct nfs_server *server = FUNC1(inode);
	struct nfs4_accessargs args = {
		.fh = FUNC0(inode),
		.bitmask = server->attr_bitmask,
	};
	struct nfs4_accessres res = {
		.server = server,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_ACCESS],
		.rpc_argp = &args,
		.rpc_resp = &res,
		.rpc_cred = entry->cred,
	};
	int mode = entry->mask;
	int status;

	/*
	 * Determine which access bits we want to ask for...
	 */
	if (mode & MAY_READ)
		args.access |= NFS4_ACCESS_READ;
	if (FUNC2(inode->i_mode)) {
		if (mode & MAY_WRITE)
			args.access |= NFS4_ACCESS_MODIFY | NFS4_ACCESS_EXTEND | NFS4_ACCESS_DELETE;
		if (mode & MAY_EXEC)
			args.access |= NFS4_ACCESS_LOOKUP;
	} else {
		if (mode & MAY_WRITE)
			args.access |= NFS4_ACCESS_MODIFY | NFS4_ACCESS_EXTEND;
		if (mode & MAY_EXEC)
			args.access |= NFS4_ACCESS_EXECUTE;
	}

	res.fattr = FUNC5();
	if (res.fattr == NULL)
		return -ENOMEM;

	status = FUNC3(server->client, server, &msg, &args.seq_args, &res.seq_res, 0);
	if (!status) {
		FUNC4(entry, res.access);
		FUNC7(inode, res.fattr);
	}
	FUNC6(res.fattr);
	return status;
}