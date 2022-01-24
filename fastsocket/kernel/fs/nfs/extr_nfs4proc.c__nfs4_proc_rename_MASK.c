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
struct rpc_message {struct nfs_renameres* rpc_resp; struct nfs_renameargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs_renameres {int /*<<< orphan*/  new_cinfo; int /*<<< orphan*/  old_cinfo; int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct nfs_renameargs {int /*<<< orphan*/  seq_args; struct qstr* new_name; struct qstr* old_name; int /*<<< orphan*/  new_dir; int /*<<< orphan*/  old_dir; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFSPROC4_CLNT_RENAME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *old_dir, struct qstr *old_name,
		struct inode *new_dir, struct qstr *new_name)
{
	struct nfs_server *server = FUNC1(old_dir);
	struct nfs_renameargs arg = {
		.old_dir = FUNC0(old_dir),
		.new_dir = FUNC0(new_dir),
		.old_name = old_name,
		.new_name = new_name,
	};
	struct nfs_renameres res = {
		.server = server,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_RENAME],
		.rpc_argp = &arg,
		.rpc_resp = &res,
	};
	int status = -ENOMEM;
	
	status = FUNC2(server->client, server, &msg, &arg.seq_args, &res.seq_res, 1);
	if (!status) {
		FUNC3(old_dir, &res.old_cinfo);
		FUNC3(new_dir, &res.new_cinfo);
	}
	return status;
}