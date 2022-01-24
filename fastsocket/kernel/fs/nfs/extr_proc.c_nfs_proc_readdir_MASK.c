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
typedef  scalar_t__ u64 ;
struct rpc_message {struct rpc_cred* rpc_cred; struct nfs_readdirargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct rpc_cred {int dummy; } ;
struct page {int dummy; } ;
struct nfs_readdirargs {unsigned int count; struct page** pages; scalar_t__ cookie; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 size_t NFSPROC_READDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct dentry *dentry, struct rpc_cred *cred,
		 u64 cookie, struct page **pages, unsigned int count, int plus)
{
	struct inode		*dir = dentry->d_inode;
	struct nfs_readdirargs	arg = {
		.fh		= FUNC1(dir),
		.cookie		= cookie,
		.count		= count,
		.pages		= pages,
	};
	struct rpc_message	msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_READDIR],
		.rpc_argp	= &arg,
		.rpc_cred	= cred,
	};
	int			status;

	FUNC2("NFS call  readdir %d\n", (unsigned int)cookie);
	status = FUNC4(FUNC0(dir), &msg, 0);

	FUNC3(dir);

	FUNC2("NFS reply readdir: %d\n", status);
	return status;
}