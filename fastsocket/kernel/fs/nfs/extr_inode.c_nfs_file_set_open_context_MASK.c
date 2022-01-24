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
struct nfs_open_context {int /*<<< orphan*/  list; } ;
struct nfs_inode {int /*<<< orphan*/  open_files; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int /*<<< orphan*/  private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct file *filp, struct nfs_open_context *ctx)
{
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct nfs_inode *nfsi = FUNC0(inode);

	filp->private_data = FUNC1(ctx);
	FUNC3(&inode->i_lock);
	FUNC2(&ctx->list, &nfsi->open_files);
	FUNC4(&inode->i_lock);
}