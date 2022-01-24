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
struct fdtable {int /*<<< orphan*/  close_on_exec; int /*<<< orphan*/ ** fd; } ;
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct fdtable* FUNC2 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned int fd, struct file *file)
{
	struct files_struct *files = current->files;
	struct fdtable *fdt;

	FUNC4(&files->file_lock);
	fdt = FUNC2(files);
	FUNC0(fdt->fd[fd] != NULL);
	FUNC3(fdt->fd[fd], file);
	FUNC1(fd, fdt->close_on_exec);
	FUNC5(&files->file_lock);
}