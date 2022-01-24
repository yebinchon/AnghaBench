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
struct files_struct {unsigned int next_fd; } ;
struct fdtable {int /*<<< orphan*/  open_fds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct fdtable* FUNC1 (struct files_struct*) ; 

__attribute__((used)) static void FUNC2(struct files_struct *files, unsigned int fd)
{
	struct fdtable *fdt = FUNC1(files);
	FUNC0(fd, fdt->open_fds);
	if (fd < files->next_fd)
		files->next_fd = fd;
}