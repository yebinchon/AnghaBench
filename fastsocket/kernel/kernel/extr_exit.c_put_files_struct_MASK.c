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
struct fdtable {int dummy; } ;
struct files_struct {struct fdtable fdtab; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct files_struct*) ; 
 int /*<<< orphan*/  files_cachep ; 
 struct fdtable* FUNC2 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct fdtable*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct files_struct*) ; 

void FUNC5(struct files_struct *files)
{
	struct fdtable *fdt;

	if (FUNC0(&files->count)) {
		FUNC1(files);
		/*
		 * Free the fd and fdset arrays if we expanded them.
		 * If the fdtable was embedded, pass files for freeing
		 * at the end of the RCU grace period. Otherwise,
		 * you can free files immediately.
		 */
		fdt = FUNC2(files);
		if (fdt != &files->fdtab)
			FUNC4(files_cachep, files);
		FUNC3(fdt);
	}
}