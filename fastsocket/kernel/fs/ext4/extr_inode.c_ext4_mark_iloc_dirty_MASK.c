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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  I_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(handle_t *handle,
			 struct inode *inode, struct ext4_iloc *iloc)
{
	int err = 0;

	if (FUNC4(inode->i_sb, I_VERSION))
		FUNC2(inode);

	/* the do_update_inode consumes one bh->b_count */
	FUNC1(iloc->bh);

	/* ext4_do_update_inode() does jbd2_journal_dirty_metadata */
	err = FUNC0(handle, inode, iloc);
	FUNC3(iloc->bh);
	return err;
}