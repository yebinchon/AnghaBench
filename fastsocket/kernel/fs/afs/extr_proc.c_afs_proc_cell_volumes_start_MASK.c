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
struct seq_file {struct afs_cell* private; } ;
struct afs_cell {int /*<<< orphan*/  vl_list; int /*<<< orphan*/  vl_sem; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct afs_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC3(struct seq_file *m, loff_t *_pos)
{
	struct afs_cell *cell = m->private;

	FUNC0("cell=%p pos=%Ld", cell, *_pos);

	/* lock the list against modification */
	FUNC1(&cell->vl_sem);
	return FUNC2(&cell->vl_list, *_pos);
}