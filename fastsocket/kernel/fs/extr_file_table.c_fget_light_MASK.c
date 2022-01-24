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
struct files_struct {int /*<<< orphan*/  count; } ;
struct file {int /*<<< orphan*/  f_count; } ;
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 struct file* FUNC2 (struct files_struct*,unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

struct file *FUNC6(unsigned int fd, int *fput_needed)
{
	struct file *file;
	struct files_struct *files = current->files;

	*fput_needed = 0;
	if (FUNC3((FUNC1(&files->count) == 1))) {
		file = FUNC2(files, fd);
	} else {
		FUNC4();
		file = FUNC2(files, fd);
		if (file) {
			if (FUNC0(&file->f_count))
				*fput_needed = 1;
			else
				/* Didn't get the reference, someone's freed */
				file = NULL;
		}
		FUNC5();
	}

	return file;
}