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
struct mm_struct {scalar_t__ num_exe_file_vmas; struct file* exe_file; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 

void FUNC2(struct mm_struct *mm, struct file *new_exe_file)
{
	if (new_exe_file)
		FUNC1(new_exe_file);
	if (mm->exe_file)
		FUNC0(mm->exe_file);
	mm->exe_file = new_exe_file;
	mm->num_exe_file_vmas = 0;
}