#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {scalar_t__ sync_mode; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int s_flags; } ;

/* Variables and functions */
 int EROFS ; 
 int MS_RDONLY ; 
 int PF_MEMALLOC ; 
 scalar_t__ WB_SYNC_ALL ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC0 (struct reiserfs_transaction_handle*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct reiserfs_transaction_handle*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(struct inode *inode, struct writeback_control *wbc)
{
	struct reiserfs_transaction_handle th;
	int jbegin_count = 1;

	if (inode->i_sb->s_flags & MS_RDONLY)
		return -EROFS;
	/* memory pressure can sometimes initiate write_inode calls with sync == 1,
	 ** these cases are just when the system needs ram, not when the
	 ** inode needs to reach disk for safety, and they can safely be
	 ** ignored because the altered inode has already been logged.
	 */
	if (wbc->sync_mode == WB_SYNC_ALL && !(current->flags & PF_MEMALLOC)) {
		FUNC3(inode->i_sb);
		if (!FUNC0(&th, inode->i_sb, jbegin_count)) {
			FUNC2(&th, inode);
			FUNC1(&th, inode->i_sb, jbegin_count);
		}
		FUNC4(inode->i_sb);
	}
	return 0;
}