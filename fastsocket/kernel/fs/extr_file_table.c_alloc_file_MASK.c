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
struct path {int /*<<< orphan*/  mnt; TYPE_1__* dentry; } ;
struct file_operations {int dummy; } ;
struct file {int f_mode; struct file_operations const* f_op; int /*<<< orphan*/  f_mapping; struct path f_path; } ;
typedef  int fmode_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_mapping; } ;
struct TYPE_3__ {TYPE_2__* d_inode; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct file* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct file *FUNC6(struct path *path, fmode_t mode,
		const struct file_operations *fop)
{
	struct file *file;

	file = FUNC2();
	if (!file)
		return NULL;

	file->f_path = *path;
	file->f_mapping = path->dentry->d_inode->i_mapping;
	file->f_mode = mode;
	file->f_op = fop;

	/*
	 * These mounts don't really matter in practice
	 * for r/o bind mounts.  They aren't userspace-
	 * visible.  We do this for consistency, and so
	 * that we can do debugging checks at __fput()
	 */
	if ((mode & FMODE_WRITE) && !FUNC5(path->dentry->d_inode->i_mode)) {
		FUNC1(file);
		FUNC0(FUNC4(path->mnt));
	}
	FUNC3(file);
	return file;
}