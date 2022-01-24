#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_dirt; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ ParID; } ;
struct TYPE_6__ {TYPE_1__ cat_key; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  root_files; int /*<<< orphan*/  file_count; int /*<<< orphan*/  root_dirs; int /*<<< orphan*/  folder_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_INODE ; 
 int /*<<< orphan*/  HFS_FLG_MDB_DIRTY ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  HFS_ROOT_CNID ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;

	FUNC5(DBG_INODE, "delete_inode: %lu\n", inode->i_ino);
	if (FUNC2(inode->i_mode)) {
		FUNC1(sb)->folder_count--;
		if (FUNC0(inode)->cat_key.ParID == FUNC4(HFS_ROOT_CNID))
			FUNC1(sb)->root_dirs--;
		FUNC7(HFS_FLG_MDB_DIRTY, &FUNC1(sb)->flags);
		sb->s_dirt = 1;
		return;
	}
	FUNC1(sb)->file_count--;
	if (FUNC0(inode)->cat_key.ParID == FUNC4(HFS_ROOT_CNID))
		FUNC1(sb)->root_files--;
	if (FUNC3(inode->i_mode)) {
		if (!inode->i_nlink) {
			inode->i_size = 0;
			FUNC6(inode);
		}
	}
	FUNC7(HFS_FLG_MDB_DIRTY, &FUNC1(sb)->flags);
	sb->s_dirt = 1;
}