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
struct inode {int /*<<< orphan*/  i_writecount; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; int /*<<< orphan*/  i_reserved_data_blocks; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_DA_ALLOC_CLOSE ; 
 int FMODE_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *filp)
{
	if (FUNC7(inode, EXT4_STATE_DA_ALLOC_CLOSE)) {
		FUNC3(inode);
		FUNC4(inode, EXT4_STATE_DA_ALLOC_CLOSE);
	}
	/* if we are the last writer on the inode, drop the block reservation */
	if ((filp->f_mode & FMODE_WRITE) &&
			(FUNC1(&inode->i_writecount) == 1) &&
		        !FUNC0(inode)->i_reserved_data_blocks)
	{
		FUNC2(&FUNC0(inode)->i_data_sem);
		FUNC5(inode);
		FUNC9(&FUNC0(inode)->i_data_sem);
	}
	if (FUNC8(inode) && filp->private_data)
		FUNC6(filp->private_data);

	return 0;
}