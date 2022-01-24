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
struct nfs_open_context {TYPE_1__* dentry; } ;
struct nfs_lock_context {int /*<<< orphan*/  list; int /*<<< orphan*/  count; struct nfs_open_context* open_context; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nfs_lock_context *l_ctx)
{
	struct nfs_open_context *ctx = l_ctx->open_context;
	struct inode *inode = ctx->dentry->d_inode;

	if (!FUNC0(&l_ctx->count, &inode->i_lock))
		return;
	FUNC2(&l_ctx->list);
	FUNC3(&inode->i_lock);
	FUNC1(l_ctx);
}