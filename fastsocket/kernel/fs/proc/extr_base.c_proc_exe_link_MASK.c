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
struct mm_struct {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct path f_path; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct file* FUNC1 (struct mm_struct*) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 struct mm_struct* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct path *exe_path)
{
	struct task_struct *task;
	struct mm_struct *mm;
	struct file *exe_file;

	task = FUNC2(inode);
	if (!task)
		return -ENOENT;
	mm = FUNC3(task);
	FUNC6(task);
	if (!mm)
		return -ENOENT;
	exe_file = FUNC1(mm);
	FUNC4(mm);
	if (exe_file) {
		*exe_path = exe_file->f_path;
		FUNC5(&exe_file->f_path);
		FUNC0(exe_file);
		return 0;
	} else
		return -ENOENT;
}