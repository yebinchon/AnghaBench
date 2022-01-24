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
struct fdtable {int /*<<< orphan*/  close_on_exec; } ;
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct fdtable* FUNC2 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(unsigned int fd, int flag)
{
	struct files_struct *files = current->files;
	struct fdtable *fdt;
	FUNC3(&files->file_lock);
	fdt = FUNC2(files);
	if (flag)
		FUNC1(fd, fdt->close_on_exec);
	else
		FUNC0(fd, fdt->close_on_exec);
	FUNC4(&files->file_lock);
}