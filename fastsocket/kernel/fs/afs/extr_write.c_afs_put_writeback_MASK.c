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
struct afs_writeback {scalar_t__ usage; struct afs_vnode* vnode; } ;
struct afs_vnode {int /*<<< orphan*/  writeback_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_writeback*) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_writeback*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct afs_writeback *wb)
{
	struct afs_vnode *vnode = wb->vnode;

	FUNC0("{%d}", wb->usage);

	FUNC3(&vnode->writeback_lock);
	if (--wb->usage == 0)
		FUNC2(wb);
	else
		wb = NULL;
	FUNC4(&vnode->writeback_lock);
	if (wb)
		FUNC1(wb);
}