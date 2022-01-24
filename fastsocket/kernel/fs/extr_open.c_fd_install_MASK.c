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
struct files_struct {int /*<<< orphan*/  file_lock; } ;
struct file {int dummy; } ;
struct fdtable {int /*<<< orphan*/ ** fd; } ;
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct fdtable* FUNC1 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(unsigned int fd, struct file *file)
{
	struct files_struct *files = current->files;
	struct fdtable *fdt;
	FUNC3(&files->file_lock);
	fdt = FUNC1(files);
	FUNC0(fdt->fd[fd] != NULL);
	FUNC2(fdt->fd[fd], file);
	FUNC4(&files->file_lock);
}