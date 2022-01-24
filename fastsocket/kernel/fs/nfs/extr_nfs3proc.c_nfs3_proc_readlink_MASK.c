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
struct rpc_message {struct nfs_fattr* rpc_resp; struct nfs3_readlinkargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs3_readlinkargs {unsigned int pgbase; unsigned int pglen; struct page** pages; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFS3PROC_READLINK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 struct nfs_fattr* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct nfs_fattr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct page *page,
		unsigned int pgbase, unsigned int pglen)
{
	struct nfs_fattr	*fattr;
	struct nfs3_readlinkargs args = {
		.fh		= FUNC1(inode),
		.pgbase		= pgbase,
		.pglen		= pglen,
		.pages		= &page
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_READLINK],
		.rpc_argp	= &args,
	};
	int status = -ENOMEM;

	FUNC2("NFS call  readlink\n");
	fattr = FUNC3();
	if (fattr == NULL)
		goto out;
	msg.rpc_resp = fattr;

	status = FUNC6(FUNC0(inode), &msg, 0);
	FUNC5(inode, fattr);
	FUNC4(fattr);
out:
	FUNC2("NFS reply readlink: %d\n", status);
	return status;
}