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
struct nfs_open_context {struct nfs4_state* state; int /*<<< orphan*/  cred; int /*<<< orphan*/  mode; int /*<<< orphan*/  dentry; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct nfs4_state*) ; 
 scalar_t__ FUNC1 (struct nfs4_state*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfs4_state* FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *
FUNC4(struct inode *dir, struct nfs_open_context *ctx, int open_flags, struct iattr *attr)
{
	struct nfs4_state *state;

	/* Protect against concurrent sillydeletes */
	state = FUNC3(dir, ctx->dentry, ctx->mode, open_flags, attr, ctx->cred);
	if (FUNC1(state))
		return FUNC0(state);
	ctx->state = state;
	return FUNC2(state->inode);
}