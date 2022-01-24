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
struct nfs_open_context {int /*<<< orphan*/  list; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int /*<<< orphan*/ * private_data; TYPE_2__ f_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  open_files; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfs_open_context* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct file *filp)
{
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct nfs_open_context *ctx = FUNC2(filp);

	if (ctx) {
		filp->private_data = NULL;
		FUNC4(&inode->i_lock);
		FUNC1(&ctx->list, &FUNC0(inode)->open_files);
		FUNC5(&inode->i_lock);
		FUNC3(ctx);
	}
}