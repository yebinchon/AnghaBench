#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_cred {int dummy; } ;
struct TYPE_2__ {struct nfs_open_context* open_context; } ;
struct nfs_open_context {int /*<<< orphan*/  list; TYPE_1__ lock_context; scalar_t__ error; scalar_t__ flags; int /*<<< orphan*/  mode; int /*<<< orphan*/ * state; int /*<<< orphan*/  cred; int /*<<< orphan*/  dentry; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_cred*) ; 
 struct nfs_open_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct nfs_open_context *FUNC6(struct dentry *dentry, struct rpc_cred *cred, fmode_t f_mode)
{
	struct nfs_open_context *ctx;

	ctx = FUNC3(sizeof(*ctx), GFP_KERNEL);
	if (ctx != NULL) {
		FUNC5(dentry->d_sb);
		ctx->dentry = FUNC1(dentry);
		ctx->cred = FUNC2(cred);
		ctx->state = NULL;
		ctx->mode = f_mode;
		ctx->flags = 0;
		ctx->error = 0;
		FUNC4(&ctx->lock_context);
		ctx->lock_context.open_context = ctx;
		FUNC0(&ctx->list);
	}
	return ctx;
}