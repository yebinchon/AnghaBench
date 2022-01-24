#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct nfs_open_context {TYPE_2__* dentry; int /*<<< orphan*/ * cred; TYPE_1__ lock_context; int /*<<< orphan*/  list; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* close_context ) (struct nfs_open_context*,int) ;} ;
struct TYPE_5__ {struct super_block* d_sb; struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_open_context*,int) ; 

__attribute__((used)) static void FUNC12(struct nfs_open_context *ctx, int is_sync)
{
	struct inode *inode = ctx->dentry->d_inode;
	struct super_block *sb = ctx->dentry->d_sb;

	if (!FUNC6(&ctx->list)) {
		if (!FUNC1(&ctx->lock_context.count, &inode->i_lock))
			return;
		FUNC5(&ctx->list);
		FUNC10(&inode->i_lock);
	} else if (!FUNC2(&ctx->lock_context.count))
		return;
	if (inode != NULL)
		FUNC0(inode)->close_context(ctx, is_sync);
	if (ctx->cred != NULL)
		FUNC9(ctx->cred);
	FUNC3(ctx->dentry);
	if (is_sync)
		FUNC7(sb);
	else
		FUNC8(sb);
	FUNC4(ctx);
}