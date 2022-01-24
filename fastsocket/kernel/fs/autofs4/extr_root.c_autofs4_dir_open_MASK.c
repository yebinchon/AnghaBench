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
struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct file*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct inode*,struct file*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct dentry *dentry = file->f_path.dentry;
	struct autofs_sb_info *sbi = FUNC2(dentry->d_sb);

	FUNC0("file=%p dentry=%p %.*s",
		file, dentry, dentry->d_name.len, dentry->d_name.name);

	if (FUNC1(sbi))
		goto out;

	/*
	 * An empty directory in an autofs file system is always a
	 * mount point. The daemon must have failed to mount this
	 * during lookup so it doesn't exist. This can happen, for
	 * example, if user space returns an incorrect status for a
	 * mount request. Otherwise we're doing a readdir on the
	 * autofs file system so just let the libfs routines handle
	 * it.
	 */
	if (!FUNC3(dentry) && FUNC5(dentry))
		return -ENOENT;

out:
	return FUNC4(inode, file);
}