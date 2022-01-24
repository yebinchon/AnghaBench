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
struct proc_dir_entry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_proc_cells_fops ; 
 int /*<<< orphan*/  afs_proc_rootcell_fops ; 
 int /*<<< orphan*/ * proc_afs ; 
 struct proc_dir_entry* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

int FUNC5(void)
{
	struct proc_dir_entry *p;

	FUNC0("");

	proc_afs = FUNC3("fs/afs", NULL);
	if (!proc_afs)
		goto error_dir;

	p = FUNC2("cells", 0, proc_afs, &afs_proc_cells_fops);
	if (!p)
		goto error_cells;

	p = FUNC2("rootcell", 0, proc_afs, &afs_proc_rootcell_fops);
	if (!p)
		goto error_rootcell;

	FUNC1(" = 0");
	return 0;

error_rootcell:
 	FUNC4("cells", proc_afs);
error_cells:
	FUNC4("fs/afs", NULL);
error_dir:
	FUNC1(" = -ENOMEM");
	return -ENOMEM;
}