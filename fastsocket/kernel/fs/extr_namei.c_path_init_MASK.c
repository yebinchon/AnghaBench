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
struct TYPE_5__ {struct dentry* dentry; int /*<<< orphan*/ * mnt; } ;
struct nameidata {unsigned int flags; TYPE_2__ path; TYPE_2__ root; scalar_t__ depth; int /*<<< orphan*/  last_type; } ;
struct fs_struct {int /*<<< orphan*/  lock; TYPE_2__ pwd; } ;
struct file {TYPE_2__ f_path; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_6__ {struct fs_struct* fs; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int EBADF ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  LAST_ROOT ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 struct file* FUNC1 (int,int*) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nameidata*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(int dfd, const char *name, unsigned int flags, struct nameidata *nd)
{
	int retval = 0;
	int fput_needed;
	struct file *file;

	nd->last_type = LAST_ROOT; /* if there are only slashes... */
	nd->flags = flags;
	nd->depth = 0;
	nd->root.mnt = NULL;

	if (*name=='/') {
		FUNC7(nd);
		nd->path = nd->root;
		FUNC4(&nd->root);
	} else if (dfd == AT_FDCWD) {
		struct fs_struct *fs = current->fs;
		FUNC5(&fs->lock);
		nd->path = fs->pwd;
		FUNC4(&fs->pwd);
		FUNC6(&fs->lock);
	} else {
		struct dentry *dentry;

		file = FUNC1(dfd, &fput_needed);
		retval = -EBADF;
		if (!file)
			goto out_fail;

		dentry = file->f_path.dentry;

		retval = -ENOTDIR;
		if (!FUNC0(dentry->d_inode->i_mode))
			goto fput_fail;

		/*
		 * __link_path_walk will shortcut the permissions check if the
		 * pathname is empty, so we must handle it here.
		 */
		if (FUNC8(*name == '\0')) {
			retval = FUNC2(file, MAY_EXEC);
			if (retval)
				goto fput_fail;
		}

		nd->path = file->f_path;
		FUNC4(&file->f_path);

		FUNC3(file, fput_needed);
	}
	return 0;

fput_fail:
	FUNC3(file, fput_needed);
out_fail:
	return retval;
}