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
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_super; int /*<<< orphan*/  t_trans_id; } ;
struct inode {int dummy; } ;
struct reiserfs_inode_info {unsigned long i_prealloc_block; scalar_t__ i_prealloc_count; int /*<<< orphan*/  i_prealloc_list; struct inode vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_transaction_handle*,struct inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_transaction_handle*,struct inode*) ; 

__attribute__((used)) static void FUNC5(struct reiserfs_transaction_handle *th,
			       struct reiserfs_inode_info *ei)
{
	unsigned long save = ei->i_prealloc_block;
	int dirty = 0;
	struct inode *inode = &ei->vfs_inode;
	FUNC0(!th->t_trans_id);
#ifdef CONFIG_REISERFS_CHECK
	if (ei->i_prealloc_count < 0)
		reiserfs_error(th->t_super, "zam-4001",
			       "inode has negative prealloc blocks count.");
#endif
	while (ei->i_prealloc_count > 0) {
		FUNC3(th, inode, ei->i_prealloc_block);
		ei->i_prealloc_block++;
		ei->i_prealloc_count--;
		dirty = 1;
	}
	if (dirty)
		FUNC4(th, inode);
	ei->i_prealloc_block = save;
	FUNC1(&(ei->i_prealloc_list));
}