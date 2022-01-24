#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_iloc {TYPE_1__* bh; } ;
struct TYPE_8__ {scalar_t__ s_journal; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 int PF_MEMALLOC ; 
 scalar_t__ WB_SYNC_ALL ; 
 int FUNC1 (struct inode*,struct ext4_iloc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

int FUNC10(struct inode *inode, struct writeback_control *wbc)
{
	int err;

	if (current->flags & PF_MEMALLOC)
		return 0;

	if (FUNC0(inode->i_sb)->s_journal) {
		if (FUNC7()) {
			FUNC8(1, "called recursively, non-PF_MEMALLOC!\n");
			FUNC4();
			return -EIO;
		}

		if (wbc->sync_mode != WB_SYNC_ALL)
			return 0;

		err = FUNC6(inode->i_sb);
	} else {
		struct ext4_iloc iloc;

		err = FUNC1(inode, &iloc, 0);
		if (err)
			return err;
		if (wbc->sync_mode == WB_SYNC_ALL)
			FUNC9(iloc.bh);
		if (FUNC2(iloc.bh) && !FUNC3(iloc.bh)) {
			FUNC5(inode->i_sb, "IO error syncing inode, "
				   "inode=%lu, block=%llu", inode->i_ino,
				   (unsigned long long)iloc.bh->b_blocknr);
			err = -EIO;
		}
	}
	return err;
}