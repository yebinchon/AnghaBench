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
struct ocfs2_inode_info {int ip_flags; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_open_count; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {int f_flags; TYPE_3__ f_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 int OCFS2_INODE_OPEN_DIRECT ; 
 int O_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (char*,struct inode*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	int status;
	int mode = file->f_flags;
	struct ocfs2_inode_info *oi = FUNC0(inode);

	FUNC1("(0x%p, 0x%p, '%.*s')\n", inode, file,
		   file->f_path.dentry->d_name.len, file->f_path.dentry->d_name.name);

	FUNC4(&oi->ip_lock);

	/* Check that the inode hasn't been wiped from disk by another
	 * node. If it hasn't then we're safe as long as we hold the
	 * spin lock until our increment of open count. */
	if (FUNC0(inode)->ip_flags & OCFS2_INODE_DELETED) {
		FUNC5(&oi->ip_lock);

		status = -ENOENT;
		goto leave;
	}

	if (mode & O_DIRECT)
		oi->ip_flags |= OCFS2_INODE_OPEN_DIRECT;

	oi->ip_open_count++;
	FUNC5(&oi->ip_lock);

	status = FUNC3(inode, file);
	if (status) {
		/*
		 * We want to set open count back if we're failing the
		 * open.
		 */
		FUNC4(&oi->ip_lock);
		oi->ip_open_count--;
		FUNC5(&oi->ip_lock);
	}

leave:
	FUNC2(status);
	return status;
}