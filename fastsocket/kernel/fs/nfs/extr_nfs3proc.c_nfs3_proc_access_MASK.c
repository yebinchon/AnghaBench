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
struct rpc_message {int /*<<< orphan*/  rpc_cred; struct nfs3_accessres* rpc_resp; struct nfs3_accessargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_access_entry {int mask; int /*<<< orphan*/  cred; } ;
struct nfs3_accessres {int access; int /*<<< orphan*/ * fattr; } ;
struct nfs3_accessargs {int access; int /*<<< orphan*/  fh; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 size_t NFS3PROC_ACCESS ; 
 int NFS3_ACCESS_DELETE ; 
 int NFS3_ACCESS_EXECUTE ; 
 int NFS3_ACCESS_EXTEND ; 
 int NFS3_ACCESS_LOOKUP ; 
 int NFS3_ACCESS_MODIFY ; 
 int NFS3_ACCESS_READ ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct nfs_access_entry *entry)
{
	struct nfs3_accessargs	arg = {
		.fh		= FUNC1(inode),
	};
	struct nfs3_accessres	res;
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_ACCESS],
		.rpc_argp	= &arg,
		.rpc_resp	= &res,
		.rpc_cred	= entry->cred,
	};
	int mode = entry->mask;
	int status = -ENOMEM;

	FUNC3("NFS call  access\n");

	if (mode & MAY_READ)
		arg.access |= NFS3_ACCESS_READ;
	if (FUNC2(inode->i_mode)) {
		if (mode & MAY_WRITE)
			arg.access |= NFS3_ACCESS_MODIFY | NFS3_ACCESS_EXTEND | NFS3_ACCESS_DELETE;
		if (mode & MAY_EXEC)
			arg.access |= NFS3_ACCESS_LOOKUP;
	} else {
		if (mode & MAY_WRITE)
			arg.access |= NFS3_ACCESS_MODIFY | NFS3_ACCESS_EXTEND;
		if (mode & MAY_EXEC)
			arg.access |= NFS3_ACCESS_EXECUTE;
	}

	res.fattr = FUNC4();
	if (res.fattr == NULL)
		goto out;

	status = FUNC7(FUNC0(inode), &msg, 0);
	FUNC6(inode, res.fattr);
	if (status == 0) {
		entry->mask = 0;
		if (res.access & NFS3_ACCESS_READ)
			entry->mask |= MAY_READ;
		if (res.access & (NFS3_ACCESS_MODIFY | NFS3_ACCESS_EXTEND | NFS3_ACCESS_DELETE))
			entry->mask |= MAY_WRITE;
		if (res.access & (NFS3_ACCESS_LOOKUP|NFS3_ACCESS_EXECUTE))
			entry->mask |= MAY_EXEC;
	}
	FUNC5(res.fattr);
out:
	FUNC3("NFS reply access: %d\n", status);
	return status;
}