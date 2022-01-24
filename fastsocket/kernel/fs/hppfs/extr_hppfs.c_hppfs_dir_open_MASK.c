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
struct vfsmount {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct hppfs_private {int /*<<< orphan*/  proc_file; } ;
struct file {struct hppfs_private* private_data; int /*<<< orphan*/  f_mode; struct cred* f_cred; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {struct dentry* proc_dentry; } ;
struct TYPE_3__ {struct vfsmount* s_fs_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct hppfs_private* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct hppfs_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfsmount*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	const struct cred *cred = file->f_cred;
	struct hppfs_private *data;
	struct vfsmount *proc_mnt;
	struct dentry *proc_dentry;
	int err;

	err = -ENOMEM;
	data = FUNC6();
	if (data == NULL)
		goto out;

	proc_dentry = FUNC0(inode)->proc_dentry;
	proc_mnt = inode->i_sb->s_fs_info;
	data->proc_file = FUNC3(FUNC4(proc_dentry), FUNC8(proc_mnt),
				      FUNC5(file->f_mode), cred);
	err = FUNC2(data->proc_file);
	if (FUNC1(data->proc_file))
		goto out_free;

	file->private_data = data;
	return 0;

 out_free:
	FUNC7(data);
 out:
	return err;
}