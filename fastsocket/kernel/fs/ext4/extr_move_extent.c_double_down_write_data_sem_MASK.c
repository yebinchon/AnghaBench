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
struct inode {scalar_t__ i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct inode *orig_inode, struct inode *donor_inode)
{
	struct inode *first = orig_inode, *second = donor_inode;

	/*
	 * Use the inode number to provide the stable locking order instead
	 * of its address, because the C language doesn't guarantee you can
	 * compare pointers that don't come from the same array.
	 */
	if (donor_inode->i_ino < orig_inode->i_ino) {
		first = donor_inode;
		second = orig_inode;
	}

	FUNC1(&FUNC0(first)->i_data_sem);
	FUNC2(&FUNC0(second)->i_data_sem, SINGLE_DEPTH_NESTING);
}