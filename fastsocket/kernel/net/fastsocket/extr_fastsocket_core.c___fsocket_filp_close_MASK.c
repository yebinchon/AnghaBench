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
struct TYPE_2__ {int /*<<< orphan*/ * mnt; struct file* dentry; } ;
struct file {int /*<<< orphan*/  f_count; int /*<<< orphan*/  i_count; struct file* d_inode; int /*<<< orphan*/  d_count; TYPE_1__ f_path; int /*<<< orphan*/ * private_data; } ;
struct dentry {int /*<<< orphan*/  f_count; int /*<<< orphan*/  i_count; struct dentry* d_inode; int /*<<< orphan*/  d_count; TYPE_1__ f_path; int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct file*) ; 
 int /*<<< orphan*/  ERR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct dentry *dentry = file->f_path.dentry;

	if (FUNC2(&file->f_count)) {

		FUNC6(file);

		file->private_data = NULL;
		file->f_path.dentry = NULL;
		file->f_path.mnt = NULL;

		FUNC7(file);

		FUNC0(DEBUG, "Free file 0x%p[%ld]\n", file, FUNC3(&file->f_count));

		if (dentry) {
			FUNC0(DEBUG, "Release dentry 0x%p[%d]\n", dentry, FUNC4(&dentry->d_count));
			FUNC0(DEBUG, "Release inode 0x%p[%d]\n", dentry->d_inode, FUNC4(&dentry->d_inode->i_count));
		} else {
			FUNC1(ERR, "No dentry for file 0x%p\n", file);
			return 1;
		}

		FUNC5(dentry);
	} else {
		FUNC0(DEBUG, "Next time to release file 0x%p[%ld]\n", file, FUNC3(&file->f_count));
	}

	return 0;
}