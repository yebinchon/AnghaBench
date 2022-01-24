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
struct afs_cell {char* name; int /*<<< orphan*/  proc_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  proc_afs ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3(struct afs_cell *cell)
{
	FUNC0("");

	FUNC2("volumes", cell->proc_dir);
	FUNC2("vlservers", cell->proc_dir);
	FUNC2("servers", cell->proc_dir);
	FUNC2(cell->name, proc_afs);

	FUNC1("");
}