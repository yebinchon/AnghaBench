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
struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_2__ {void* i_private; struct file_operations const* i_fop; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,struct dentry*,struct dentry**) ; 
 int /*<<< orphan*/  fs_type ; 
 int /*<<< orphan*/  mount ; 
 int /*<<< orphan*/  mount_count ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct dentry *FUNC5(const char *name, mode_t mode,
				   struct dentry *parent, void *data,
				   const struct file_operations *fops)
{
	struct dentry *dentry = NULL;
	int error;

	FUNC2("securityfs: creating file '%s'\n",name);

	error = FUNC3(&fs_type, &mount, &mount_count);
	if (error) {
		dentry = FUNC0(error);
		goto exit;
	}

	error = FUNC1(name, mode, parent, &dentry);
	if (error) {
		dentry = FUNC0(error);
		FUNC4(&mount, &mount_count);
		goto exit;
	}

	if (dentry->d_inode) {
		if (fops)
			dentry->d_inode->i_fop = fops;
		if (data)
			dentry->d_inode->i_private = data;
	}
exit:
	return dentry;
}