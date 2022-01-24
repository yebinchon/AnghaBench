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
struct inode {int /*<<< orphan*/  i_writecount; int /*<<< orphan*/  i_mapping; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
struct TYPE_2__ {int i_state; int /*<<< orphan*/  truncate_mutex; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int EXT3_STATE_FLUSH_ON_CLOSE ; 
 int FMODE_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (struct inode * inode, struct file * filp)
{
	if (FUNC0(inode)->i_state & EXT3_STATE_FLUSH_ON_CLOSE) {
		FUNC4(inode->i_mapping);
		FUNC0(inode)->i_state &= ~EXT3_STATE_FLUSH_ON_CLOSE;
	}
	/* if we are the last writer on the inode, drop the block reservation */
	if ((filp->f_mode & FMODE_WRITE) &&
			(FUNC1(&inode->i_writecount) == 1))
	{
		FUNC6(&FUNC0(inode)->truncate_mutex);
		FUNC2(inode);
		FUNC7(&FUNC0(inode)->truncate_mutex);
	}
	if (FUNC5(inode) && filp->private_data)
		FUNC3(filp->private_data);

	return 0;
}