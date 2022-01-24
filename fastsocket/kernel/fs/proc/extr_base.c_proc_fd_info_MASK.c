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
struct task_struct {int dummy; } ;
struct path {int dummy; } ;
struct inode {int dummy; } ;
struct files_struct {int /*<<< orphan*/  file_lock; } ;
struct file {scalar_t__ f_pos; int /*<<< orphan*/  f_flags; struct path f_path; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  PROC_FDINFO_MAX ; 
 struct file* FUNC0 (struct files_struct*,int) ; 
 struct files_struct* FUNC1 (struct task_struct*) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct path*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct path *path, char *info)
{
	struct task_struct *task = FUNC2(inode);
	struct files_struct *files = NULL;
	struct file *file;
	int fd = FUNC4(inode);

	if (task) {
		files = FUNC1(task);
		FUNC6(task);
	}
	if (files) {
		/*
		 * We are not taking a ref to the file structure, so we must
		 * hold ->file_lock.
		 */
		FUNC8(&files->file_lock);
		file = FUNC0(files, fd);
		if (file) {
			if (path) {
				*path = file->f_path;
				FUNC3(&file->f_path);
			}
			if (info)
				FUNC7(info, PROC_FDINFO_MAX,
					 "pos:\t%lli\n"
					 "flags:\t0%o\n",
					 (long long) file->f_pos,
					 file->f_flags);
			FUNC9(&files->file_lock);
			FUNC5(files);
			return 0;
		}
		FUNC9(&files->file_lock);
		FUNC5(files);
	}
	return -ENOENT;
}