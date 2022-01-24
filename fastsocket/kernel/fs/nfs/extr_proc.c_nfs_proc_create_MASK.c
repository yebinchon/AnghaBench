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
struct rpc_message {TYPE_2__* rpc_resp; int /*<<< orphan*/ * rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_open_context {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; } ;
struct nfs_createdata {TYPE_2__ res; int /*<<< orphan*/  arg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFSPROC_CREATE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct nfs_createdata* FUNC2 (struct inode*,struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_createdata*) ; 
 int FUNC4 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *dir, struct dentry *dentry, struct iattr *sattr,
		int flags, struct nfs_open_context *ctx)
{
	struct nfs_createdata *data;
	struct rpc_message msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_CREATE],
	};
	int status = -ENOMEM;

	FUNC1("NFS call  create %s\n", dentry->d_name.name);
	data = FUNC2(dir, dentry, sattr);
	if (data == NULL)
		goto out;
	msg.rpc_argp = &data->arg;
	msg.rpc_resp = &data->res;
	status = FUNC6(FUNC0(dir), &msg, 0);
	FUNC5(dir);
	if (status == 0)
		status = FUNC4(dentry, data->res.fh, data->res.fattr);
	FUNC3(data);
out:
	FUNC1("NFS reply create: %d\n", status);
	return status;
}