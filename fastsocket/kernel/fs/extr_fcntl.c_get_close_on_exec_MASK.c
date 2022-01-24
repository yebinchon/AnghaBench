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
struct fdtable {int /*<<< orphan*/  close_on_exec; } ;
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct fdtable* FUNC1 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(unsigned int fd)
{
	struct files_struct *files = current->files;
	struct fdtable *fdt;
	int res;
	FUNC2();
	fdt = FUNC1(files);
	res = FUNC0(fd, fdt->close_on_exec);
	FUNC3();
	return res;
}