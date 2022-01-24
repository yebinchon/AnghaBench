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
struct nfs_open_context {struct nfs4_state* state; int /*<<< orphan*/  mode; struct dentry* dentry; struct rpc_cred* cred; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs4_state*) ; 
 int FUNC1 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_state*,int /*<<< orphan*/ ) ; 
 struct nfs4_state* FUNC6 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int,struct iattr*,struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct inode *dir, struct dentry *dentry, struct iattr *sattr,
                 int flags, struct nfs_open_context *ctx)
{
	struct dentry *de = dentry;
	struct nfs4_state *state;
	struct rpc_cred *cred = NULL;
	fmode_t fmode = 0;
	int status = 0;

	if (ctx != NULL) {
		cred = ctx->cred;
		de = ctx->dentry;
		fmode = ctx->mode;
	}
	state = FUNC6(dir, de, fmode, flags, sattr, cred);
	FUNC3(dentry);
	if (FUNC0(state)) {
		status = FUNC1(state);
		goto out;
	}
	FUNC2(dentry, FUNC4(state->inode));
	FUNC8(dentry, FUNC7(dir));
	if (ctx != NULL)
		ctx->state = state;
	else
		FUNC5(state, fmode);
out:
	return status;
}