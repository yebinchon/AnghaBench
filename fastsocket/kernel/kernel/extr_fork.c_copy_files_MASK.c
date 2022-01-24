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
struct task_struct {struct files_struct* files; } ;
struct files_struct {int /*<<< orphan*/  count; } ;
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 unsigned long CLONE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 struct files_struct* FUNC1 (struct files_struct*,int*) ; 

__attribute__((used)) static int FUNC2(unsigned long clone_flags, struct task_struct * tsk)
{
	struct files_struct *oldf, *newf;
	int error = 0;

	/*
	 * A background process may not have any files ...
	 */
	oldf = current->files;
	if (!oldf)
		goto out;

	if (clone_flags & CLONE_FILES) {
		FUNC0(&oldf->count);
		goto out;
	}

	newf = FUNC1(oldf, &error);
	if (!newf)
		goto out;

	tsk->files = newf;
	error = 0;
out:
	return error;
}