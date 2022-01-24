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
struct TYPE_4__ {int /*<<< orphan*/  list; } ;
struct nfs_open_context {TYPE_2__ lock_context; TYPE_1__* dentry; } ;
struct nfs_lock_context {struct nfs_open_context* open_context; int /*<<< orphan*/  list; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct nfs_lock_context* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nfs_lock_context* FUNC1 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_lock_context*) ; 
 struct nfs_lock_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct nfs_lock_context *FUNC8(struct nfs_open_context *ctx)
{
	struct nfs_lock_context *res, *new = NULL;
	struct inode *inode = ctx->dentry->d_inode;

	FUNC6(&inode->i_lock);
	res = FUNC1(ctx);
	if (res == NULL) {
		FUNC7(&inode->i_lock);
		new = FUNC3(sizeof(*new), GFP_KERNEL);
		if (new == NULL)
			return FUNC0(-ENOMEM);
		FUNC5(new);
		FUNC6(&inode->i_lock);
		res = FUNC1(ctx);
		if (res == NULL) {
			FUNC4(&new->list, &ctx->lock_context.list);
			new->open_context = ctx;
			res = new;
			new = NULL;
		}
	}
	FUNC7(&inode->i_lock);
	FUNC2(new);
	return res;
}