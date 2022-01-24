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
struct rpc_cred {int dummy; } ;
struct nfs_open_context {struct nfs4_state* state; struct rpc_cred* cred; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_state {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_file; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_FILE ; 
 int ATTR_MTIME ; 
 int ATTR_OPEN ; 
 int FUNC0 (struct inode*,struct rpc_cred*,struct nfs_fattr*,struct iattr*,struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_fattr*) ; 
 struct nfs_open_context* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct iattr*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static int
FUNC6(struct dentry *dentry, struct nfs_fattr *fattr,
		  struct iattr *sattr)
{
	struct inode *inode = dentry->d_inode;
	struct rpc_cred *cred = NULL;
	struct nfs4_state *state = NULL;
	int status;

	if (FUNC4(inode))
		FUNC5(inode);

	FUNC1(fattr);
	
	/* Deal with open(O_TRUNC) */
	if (sattr->ia_valid & ATTR_OPEN)
		sattr->ia_valid &= ~(ATTR_MTIME|ATTR_CTIME);

	/* Optimization: if the end result is no change, don't RPC */
	if ((sattr->ia_valid & ~(ATTR_FILE|ATTR_OPEN)) == 0)
		return 0;

	/* Search for an existing open(O_WRITE) file */
	if (sattr->ia_valid & ATTR_FILE) {
		struct nfs_open_context *ctx;

		ctx = FUNC2(sattr->ia_file);
		if (ctx) {
			cred = ctx->cred;
			state = ctx->state;
		}
	}

	status = FUNC0(inode, cred, fattr, sattr, state);
	if (status == 0)
		FUNC3(inode, sattr);
	return status;
}