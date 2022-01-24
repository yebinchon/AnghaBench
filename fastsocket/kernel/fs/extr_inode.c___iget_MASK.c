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
struct inode {int i_state; int /*<<< orphan*/  i_list; int /*<<< orphan*/  i_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_unused; } ;

/* Variables and functions */
 int I_DIRTY ; 
 int I_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inode_in_use ; 
 TYPE_1__ inodes_stat ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct inode *inode)
{
	if (FUNC1(&inode->i_count)) {
		FUNC0(&inode->i_count);
		return;
	}
	FUNC0(&inode->i_count);
	if (!(inode->i_state & (I_DIRTY|I_SYNC)))
		FUNC2(&inode->i_list, &inode_in_use);
	inodes_stat.nr_unused--;
}