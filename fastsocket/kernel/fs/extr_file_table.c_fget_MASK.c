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
struct files_struct {int dummy; } ;
struct file {int /*<<< orphan*/  f_count; } ;
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 struct file* FUNC1 (struct files_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct file *FUNC4(unsigned int fd)
{
	struct file *file;
	struct files_struct *files = current->files;

	FUNC2();
	file = FUNC1(files, fd);
	if (file) {
		if (!FUNC0(&file->f_count)) {
			/* File object ref couldn't be taken */
			FUNC3();
			return NULL;
		}
	}
	FUNC3();

	return file;
}