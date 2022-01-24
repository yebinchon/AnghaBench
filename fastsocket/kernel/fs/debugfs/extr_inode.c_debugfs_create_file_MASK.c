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
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  debug_fs_type ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,struct dentry*,struct dentry**,void*,struct file_operations const*) ; 
 int /*<<< orphan*/  debugfs_mount ; 
 int /*<<< orphan*/  debugfs_mount_count ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct dentry *FUNC4(const char *name, mode_t mode,
				   struct dentry *parent, void *data,
				   const struct file_operations *fops)
{
	struct dentry *dentry = NULL;
	int error;

	FUNC1("debugfs: creating file '%s'\n",name);

	error = FUNC2(&debug_fs_type, &debugfs_mount,
			      &debugfs_mount_count);
	if (error)
		goto exit;

	error = FUNC0(name, mode, parent, &dentry,
				       data, fops);
	if (error) {
		dentry = NULL;
		FUNC3(&debugfs_mount, &debugfs_mount_count);
		goto exit;
	}
exit:
	return dentry;
}