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
struct afs_cell {char* name; int /*<<< orphan*/  proc_dir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,struct afs_cell*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_proc_cell_servers_fops ; 
 int /*<<< orphan*/  afs_proc_cell_vlservers_fops ; 
 int /*<<< orphan*/  afs_proc_cell_volumes_fops ; 
 int /*<<< orphan*/  proc_afs ; 
 struct proc_dir_entry* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_cell*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct afs_cell *cell)
{
	struct proc_dir_entry *p;

	FUNC0("%p{%s}", cell, cell->name);

	cell->proc_dir = FUNC3(cell->name, proc_afs);
	if (!cell->proc_dir)
		goto error_dir;

	p = FUNC2("servers", 0, cell->proc_dir,
			     &afs_proc_cell_servers_fops, cell);
	if (!p)
		goto error_servers;

	p = FUNC2("vlservers", 0, cell->proc_dir,
			     &afs_proc_cell_vlservers_fops, cell);
	if (!p)
		goto error_vlservers;

	p = FUNC2("volumes", 0, cell->proc_dir,
			     &afs_proc_cell_volumes_fops, cell);
	if (!p)
		goto error_volumes;

	FUNC1(" = 0");
	return 0;

error_volumes:
	FUNC4("vlservers", cell->proc_dir);
error_vlservers:
	FUNC4("servers", cell->proc_dir);
error_servers:
	FUNC4(cell->name, proc_afs);
error_dir:
	FUNC1(" = -ENOMEM");
	return -ENOMEM;
}