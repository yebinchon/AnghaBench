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
struct page {int /*<<< orphan*/  mapping; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct ext2_dir_entry_2 {int /*<<< orphan*/  inode; int /*<<< orphan*/  rec_len; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  EXT2_BTREE_FL ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct page*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ext2_dir_entry_2*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int FUNC11 (struct page*) ; 

void FUNC12(struct inode *dir, struct ext2_dir_entry_2 *de,
		   struct page *page, struct inode *inode, int update_times)
{
	loff_t pos = FUNC11(page) +
			(char *) de - (char *) FUNC10(page);
	unsigned len = FUNC6(de->rec_len);
	int err;

	FUNC8(page);
	err = FUNC2(NULL, page->mapping, pos, len,
				AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	FUNC0(err);
	de->inode = FUNC3(inode->i_ino);
	FUNC7(de, inode);
	err = FUNC4(page, pos, len);
	FUNC5(page);
	if (update_times)
		dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
	FUNC1(dir)->i_flags &= ~EXT2_BTREE_FL;
	FUNC9(dir);
}