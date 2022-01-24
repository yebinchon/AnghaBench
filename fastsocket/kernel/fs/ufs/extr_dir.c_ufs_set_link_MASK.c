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
struct ufs_dir_entry {int /*<<< orphan*/  d_ino; int /*<<< orphan*/  d_reclen; } ;
struct page {int /*<<< orphan*/  mapping; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int FUNC7 (struct page*) ; 
 int FUNC8 (struct page*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ufs_dir_entry*,int /*<<< orphan*/ ) ; 

void FUNC11(struct inode *dir, struct ufs_dir_entry *de,
		  struct page *page, struct inode *inode)
{
	loff_t pos = FUNC7(page) +
			(char *) de - (char *) FUNC6(page);
	unsigned len = FUNC3(dir->i_sb, de->d_reclen);
	int err;

	FUNC4(page);
	err = FUNC1(NULL, page->mapping, pos, len,
				AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	FUNC0(err);

	de->d_ino = FUNC2(dir->i_sb, inode->i_ino);
	FUNC10(dir->i_sb, de, inode->i_mode);

	err = FUNC8(page, pos, len);
	FUNC9(page);
	dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
	FUNC5(dir);
}