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
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct files_struct*,unsigned int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(unsigned int fd)
{
	struct files_struct *files = current->files;
	FUNC1(&files->file_lock);
	FUNC0(files, fd);
	FUNC2(&files->file_lock);
}