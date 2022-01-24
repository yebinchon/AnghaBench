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
struct nameidata {int dummy; } ;
struct mq_attr {int dummy; } ;
struct ipc_namespace {scalar_t__ mq_queues_count; scalar_t__ mq_queues_max; } ;
struct inode {int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct mq_attr* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 scalar_t__ DIRENT_SIZE ; 
 int EACCES ; 
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ HARD_QUEUESMAX ; 
 struct ipc_namespace* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  mq_lock ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct ipc_namespace*,int,struct mq_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, struct dentry *dentry,
				int mode, struct nameidata *nd)
{
	struct inode *inode;
	struct mq_attr *attr = dentry->d_fsdata;
	int error;
	struct ipc_namespace *ipc_ns;

	FUNC6(&mq_lock);
	ipc_ns = FUNC0(dir);
	if (!ipc_ns) {
		error = -EACCES;
		goto out_unlock;
	}
	if (ipc_ns->mq_queues_count >= HARD_QUEUESMAX ||
	    (ipc_ns->mq_queues_count >= ipc_ns->mq_queues_max &&
	     !FUNC1(CAP_SYS_RESOURCE))) {
		error = -ENOSPC;
		goto out_unlock;
	}
	ipc_ns->mq_queues_count++;
	FUNC7(&mq_lock);

	inode = FUNC4(dir->i_sb, ipc_ns, mode, attr);
	if (!inode) {
		error = -ENOMEM;
		FUNC6(&mq_lock);
		ipc_ns->mq_queues_count--;
		goto out_unlock;
	}

	FUNC5(ipc_ns);
	dir->i_size += DIRENT_SIZE;
	dir->i_ctime = dir->i_mtime = dir->i_atime = CURRENT_TIME;

	FUNC2(dentry, inode);
	FUNC3(dentry);
	return 0;
out_unlock:
	FUNC7(&mq_lock);
	if (ipc_ns)
		FUNC5(ipc_ns);
	return error;
}