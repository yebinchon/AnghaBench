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
struct nfs_open_context {int /*<<< orphan*/  error; int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; struct inode* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_SYNC ; 
 int /*<<< orphan*/  NFSIOS_VFSFSYNC ; 
 int /*<<< orphan*/  NFS_CONTEXT_ERROR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 struct nfs_open_context* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct file *file, struct dentry *dentry, int datasync)
{
	struct nfs_open_context *ctx = FUNC2(file);
	struct inode *inode = dentry->d_inode;
	int have_error, status;
	int ret = 0;


	FUNC0("NFS: fsync file(%s/%s) datasync %d\n",
			dentry->d_parent->d_name.name, dentry->d_name.name,
			datasync);

	FUNC3(inode, NFSIOS_VFSFSYNC);
	have_error = FUNC5(NFS_CONTEXT_ERROR_WRITE, &ctx->flags);
	status = FUNC1(inode, FLUSH_SYNC);
	have_error |= FUNC6(NFS_CONTEXT_ERROR_WRITE, &ctx->flags);
	if (have_error)
		ret = FUNC7(&ctx->error, 0);
	if (!ret && status < 0)
		ret = status;
	if (!ret && !datasync)
		/* application has asked for meta-data sync */
		ret = FUNC4(inode, true);
	return ret;
}