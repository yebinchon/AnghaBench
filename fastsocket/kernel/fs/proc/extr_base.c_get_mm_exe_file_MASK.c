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
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct file* exe_file; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct file *FUNC3(struct mm_struct *mm)
{
	struct file *exe_file;

	/* We need mmap_sem to protect against races with removal of
	 * VM_EXECUTABLE vmas */
	FUNC0(&mm->mmap_sem);
	exe_file = mm->exe_file;
	if (exe_file)
		FUNC1(exe_file);
	FUNC2(&mm->mmap_sem);
	return exe_file;
}