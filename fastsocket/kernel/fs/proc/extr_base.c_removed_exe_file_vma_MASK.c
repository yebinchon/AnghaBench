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
struct mm_struct {scalar_t__ num_exe_file_vmas; int /*<<< orphan*/ * exe_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct mm_struct *mm)
{
	mm->num_exe_file_vmas--;
	if ((mm->num_exe_file_vmas == 0) && mm->exe_file){
		FUNC0(mm->exe_file);
		mm->exe_file = NULL;
	}

}